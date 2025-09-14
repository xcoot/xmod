.class public final Lcom/android/server/display/config/Thresholds;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

.field public darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/display/config/Thresholds;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 9
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v1, v2, :cond_3

    .line 17
    if-eq v1, v3, :cond_3

    .line 19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v2, "brighteningThresholds"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v2, "darkeningThresholds"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 56
    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;

    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-ne v1, v3, :cond_4

    .line 69
    return-object v0

    .line 70
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 72
    const-string v0, "Thresholds is not closed"

    .line 74
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
.end method
