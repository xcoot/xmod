.class public final Lcom/android/server/display/config/SensorDetails;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public featureFlag:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public refreshRate:Lcom/android/server/display/config/RefreshRateRange;

.field public supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field public type:Ljava/lang/String;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/display/config/SensorDetails;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string/jumbo v2, "featureFlag"

    .line 10
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iput-object v1, v0, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    .line 18
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 21
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v1, v2, :cond_6

    .line 29
    if-eq v1, v3, :cond_6

    .line 31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v1, v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const-string/jumbo v2, "type"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 52
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v2, "name"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 68
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    iput-object v1, v0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v2, "refreshRate"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 84
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const-string/jumbo v2, "supportedModes"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_5

    .line 100
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/android/server/display/config/SensorDetails;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    if-ne v1, v3, :cond_7

    .line 113
    return-object v0

    .line 114
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 116
    const-string v0, "SensorDetails is not closed"

    .line 118
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0
.end method
