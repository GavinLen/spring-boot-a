package xyz.ieden.jdbc.component;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 10:34
 * 每一个属性都要生成 Getter ang Getter Method
 */
@Component
@ConfigurationProperties(prefix = "myProperties")
public class YmlPropertiesComponent {
}
