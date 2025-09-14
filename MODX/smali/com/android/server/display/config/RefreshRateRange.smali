.class public final Lcom/android/server/display/config/RefreshRateRange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public maximum:Ljava/math/BigInteger;

.field public minimum:Ljava/math/BigInteger;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/display/config/RefreshRateRange;

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
    const-string/jumbo v2, "minimum"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/math/BigInteger;

    .line 46
    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object v2, v0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v2, "maximum"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/math/BigInteger;

    .line 67
    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object v2, v0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    if-ne v1, v3, :cond_4

    .line 79
    return-object v0

    .line 80
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 82
    const-string v0, "RefreshRateRange is not closed"

    .line 84
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
.end method
