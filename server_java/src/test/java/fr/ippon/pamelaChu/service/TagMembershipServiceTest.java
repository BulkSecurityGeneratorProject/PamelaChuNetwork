package fr.ippon.pamelaChu.service;

import fr.ippon.pamelaChu.AbstractCassandraPamelaChuTest;
import fr.ippon.pamelaChu.domain.User;
import fr.ippon.pamelaChu.security.AuthenticationService;
import fr.ippon.pamelaChu.web.rest.dto.Tag;
import org.junit.Test;
import org.springframework.test.util.ReflectionTestUtils;

import javax.inject.Inject;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class TagMembershipServiceTest extends AbstractCassandraPamelaChuTest {

    @Inject
    public UserService userService;

    @Inject
    public TagMembershipService tagMembershipService;

    @Test
    public void shouldFollowTag() {
        mockAuthentication("uuser@ippon.fr");

        Tag tag = new Tag();
        tag.setName("test");
        assertTrue(tagMembershipService.followTag(tag));
        assertTrue(tagMembershipService.unfollowTag(tag));
    }

    @Test
    public void shouldNotFollowTagTwice() {
        mockAuthentication("uuser@ippon.fr");

        Tag tag = new Tag();
        tag.setName("test");
        assertTrue(tagMembershipService.followTag(tag));
        assertFalse(tagMembershipService.followTag(tag));
        assertTrue(tagMembershipService.unfollowTag(tag));
    }

    @Test
    public void shouldNotUnfollowUnknownTag() {
        mockAuthentication("uuser@ippon.fr");

        Tag tag = new Tag();
        tag.setName("test");
        assertFalse(tagMembershipService.unfollowTag(tag));
    }

    private void mockAuthentication(String login) {
        User authenticateUser = constructAUser(login);
        AuthenticationService mockAuthenticationService = mock(AuthenticationService.class);
        when(mockAuthenticationService.getCurrentUser()).thenReturn(authenticateUser);
        ReflectionTestUtils.setField(tagMembershipService, "authenticationService", mockAuthenticationService);
        ReflectionTestUtils.setField(userService, "authenticationService", mockAuthenticationService);
    }
}