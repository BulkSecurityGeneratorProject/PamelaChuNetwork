package fr.ippon.pamelaChu.bot.config;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Configuration class for the PamelaChubot.
 */
@Entity
@Table(name = "PamelaChubotConfiguration")
public class PamelaChubotConfiguration {

    public static class PamelaChubotType {

        public final static String RSS = "RSS";

        public final static String TWITTER = "TWITTER";

        public final static String GIT = "GIT";

    }

    @Column(name = "id")
    @Id
    private String pamelaChubotConfigurationId;

    @Column(name = "domain")
    private String domain;

    @Column(name = "type")
    private String type;

    @Column(name = "url")
    private String url;

    /**
     * How often the source is polled, in seconds. Default is 5 minutes.
     */
    @Column(name = "pollingDelay")
    private Integer pollingDelay = 60 * 5;

    @Column(name = "tag")
    private String tag;

    @Column(name = "lastUpdateDate")
    private Date lastUpdateDate;

    public String getPamelaChubotConfigurationId() {
        return pamelaChubotConfigurationId;
    }

    public void setPamelaChubotConfigurationId(String pamelaChubotConfigurationId) {
        this.pamelaChubotConfigurationId = pamelaChubotConfigurationId;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getPollingDelay() {
        return pollingDelay;
    }

    public void setPollingDelay(Integer pollingDelay) {
        this.pollingDelay = pollingDelay;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getISOLastUpdateDate() {
        DateTime dt = new DateTime(lastUpdateDate);
        DateTimeFormatter fmt = ISODateTimeFormat.dateTime();
        return fmt.print(dt);
    }

    public Date getLastUpdateDate() {
        return lastUpdateDate;
    }

    public void setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }

    @Override
    public String toString() {
        return "PamelaChubotConfiguration{" +
                "pamelaChubotConfigurationId='" + pamelaChubotConfigurationId + '\'' +
                ", domain='" + domain + '\'' +
                ", type='" + type + '\'' +
                ", url=" + url +
                ", pollingDelay=" + pollingDelay +
                ", tag=" + tag +
                ", lastUpdateDate=" + lastUpdateDate +
                "} " + super.toString();
    }
}
