.class public final Lcom/android/server/display/config/BrightnessThresholds;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

.field public minimum:Ljava/math/BigDecimal;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/display/config/BrightnessThresholds;

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
    if-eq v1, v2, :cond_d

    .line 17
    if-eq v1, v3, :cond_d

    .line 19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 22
    move-result v1

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v1, v4, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v5, "minimum"

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 40
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/math/BigDecimal;

    .line 46
    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object v2, v0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v5, "brightnessThresholdPoints"

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_c

    .line 61
    new-instance v1, Lcom/android/server/display/config/ThresholdPoints;

    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 69
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 72
    move-result v5

    .line 73
    if-eq v5, v2, :cond_a

    .line 75
    if-eq v5, v3, :cond_a

    .line 77
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 80
    move-result v5

    .line 81
    if-eq v5, v4, :cond_2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    const-string/jumbo v6, "brightnessThresholdPoint"

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_9

    .line 97
    new-instance v5, Lcom/android/server/display/config/ThresholdPoint;

    .line 99
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 105
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 108
    move-result v6

    .line 109
    if-eq v6, v2, :cond_6

    .line 111
    if-eq v6, v3, :cond_6

    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 116
    move-result v6

    .line 117
    if-eq v6, v4, :cond_3

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 124
    const-string/jumbo v7, "threshold"

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_4

    .line 133
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 136
    move-result-object v6

    .line 137
    new-instance v7, Ljava/math/BigDecimal;

    .line 139
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 142
    iput-object v7, v5, Lcom/android/server/display/config/ThresholdPoint;->threshold:Ljava/math/BigDecimal;

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    const-string/jumbo v7, "percentage"

    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_5

    .line 154
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 157
    move-result-object v6

    .line 158
    new-instance v7, Ljava/math/BigDecimal;

    .line 160
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 163
    iput-object v7, v5, Lcom/android/server/display/config/ThresholdPoint;->percentage:Ljava/math/BigDecimal;

    .line 165
    goto :goto_2

    .line 166
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    if-ne v6, v3, :cond_8

    .line 172
    iget-object v6, v1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 174
    if-nez v6, :cond_7

    .line 176
    new-instance v6, Ljava/util/ArrayList;

    .line 178
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iput-object v6, v1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 183
    :cond_7
    iget-object v6, v1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 185
    check-cast v6, Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    goto :goto_1

    .line 191
    :cond_8
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 193
    const-string v0, "ThresholdPoint is not closed"

    .line 195
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 198
    throw p0

    .line 199
    :cond_9
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 202
    goto/16 :goto_1

    .line 204
    :cond_a
    if-ne v5, v3, :cond_b

    .line 206
    iput-object v1, v0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    .line 208
    goto/16 :goto_0

    .line 210
    :cond_b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 212
    const-string v0, "ThresholdPoints is not closed"

    .line 214
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 217
    throw p0

    .line 218
    :cond_c
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 221
    goto/16 :goto_0

    .line 223
    :cond_d
    if-ne v1, v3, :cond_e

    .line 225
    return-object v0

    .line 226
    :cond_e
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 228
    const-string v0, "BrightnessThresholds is not closed"

    .line 230
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 233
    throw p0
.end method
