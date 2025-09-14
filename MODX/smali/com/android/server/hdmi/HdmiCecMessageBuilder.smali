.class public abstract Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xf

    .line 7
    const/16 v1, 0x82

    .line 9
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p3, v0, v1

    .line 7
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    .line 1
    shr-int/lit8 v0, p1, 0x10

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    int-to-byte v0, v0

    .line 6
    shr-int/lit8 v1, p1, 0x8

    .line 8
    and-int/lit16 v1, v1, 0xff

    .line 10
    int-to-byte v1, v1

    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 13
    int-to-byte p1, p1

    .line 14
    const/4 v2, 0x3

    .line 15
    new-array v2, v2, [B

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-byte v0, v2, v3

    .line 20
    const/4 v0, 0x1

    .line 21
    aput-byte v1, v2, v0

    .line 23
    const/4 v0, 0x2

    .line 24
    aput-byte p1, v2, v0

    .line 26
    const/16 p1, 0xf

    .line 28
    const/16 v0, 0x87

    .line 30
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    .line 1
    shr-int/lit8 v0, p1, 0x8

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    int-to-byte v0, v0

    .line 6
    and-int/lit16 p1, p1, 0xff

    .line 8
    int-to-byte p1, p1

    .line 9
    and-int/lit16 p2, p2, 0xff

    .line 11
    int-to-byte p2, p2

    .line 12
    const/4 v1, 0x3

    .line 13
    new-array v1, v1, [B

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-byte v0, v1, v2

    .line 18
    const/4 v0, 0x1

    .line 19
    aput-byte p1, v1, v0

    .line 21
    const/4 p1, 0x2

    .line 22
    aput-byte p2, v1, p1

    .line 24
    const/16 p1, 0xf

    .line 26
    const/16 p2, 0x84

    .line 28
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    .line 1
    shr-int/lit8 v0, p1, 0x8

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    int-to-byte v0, v0

    .line 6
    and-int/lit16 p1, p1, 0xff

    .line 8
    int-to-byte p1, p1

    .line 9
    shr-int/lit8 v1, p2, 0x8

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    int-to-byte v1, v1

    .line 14
    and-int/lit16 p2, p2, 0xff

    .line 16
    int-to-byte p2, p2

    .line 17
    const/4 v2, 0x4

    .line 18
    new-array v2, v2, [B

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-byte v0, v2, v3

    .line 23
    const/4 v0, 0x1

    .line 24
    aput-byte p1, v2, v0

    .line 26
    const/4 p1, 0x2

    .line 27
    aput-byte v1, v2, p1

    .line 29
    const/4 p1, 0x3

    .line 30
    aput-byte p2, v2, p1

    .line 32
    const/16 p1, 0xf

    .line 34
    const/16 p2, 0x80

    .line 36
    invoke-static {p0, p1, p2, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xe

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    const-string v0, "US-ASCII"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 21
    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/16 v0, 0x47

    .line 24
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static physicalAddressToParam(I)[B
    .locals 3

    .line 1
    shr-int/lit8 v0, p0, 0x8

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    int-to-byte v0, v0

    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 8
    int-to-byte p0, p0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [B

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-byte v0, v1, v2

    .line 15
    const/4 v0, 0x1

    .line 16
    aput-byte p0, v1, v0

    .line 18
    return-object v1
.end method
