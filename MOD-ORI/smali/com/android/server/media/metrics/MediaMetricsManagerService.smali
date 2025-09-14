.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

.field public static final PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;


# instance fields
.field public mAllowlist:Ljava/util/List;

.field public mBlockList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mMode:Ljava/lang/Integer;

.field public mNoUidAllowlist:Ljava/util/List;

.field public mNoUidBlocklist:Ljava/util/List;

.field public final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public static -$$Nest$smgetBucketedDurationMillis(J)J
    .locals 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, p0, v2

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    add-long/2addr p0, v0

    .line 17
    long-to-double p0, p0

    .line 18
    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-double/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    div-double/2addr p0, v4

    .line 35
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 36
    .line 37
    add-double/2addr p0, v4

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    double-to-int p0, p0

    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/16 p1, 0xd

    .line 49
    .line 50
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/lit8 p0, p0, -0x8

    .line 55
    .line 56
    int-to-double p0, p0

    .line 57
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    mul-double/2addr p0, v0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide p0

    .line 66
    double-to-long v0, p0

    .line 67
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static -$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, ""

    .line 29
    .line 30
    :goto_1
    return-object p0
.end method

.method public static -$$Nest$smgetVideoFrameRateEnum(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-eq p0, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x19

    .line 10
    .line 11
    if-eq p0, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x1e

    .line 14
    .line 15
    if-eq p0, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x32

    .line 18
    .line 19
    if-eq p0, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x3c

    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x78

    .line 26
    .line 27
    if-eq p0, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0xf0

    .line 30
    .line 31
    if-eq p0, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x1e0

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x3c0

    .line 38
    .line 39
    if-eq p0, v0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const p0, 0x17700

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const p0, 0xbb80

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 p0, 0x5dc0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/16 p0, 0x2ee0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    const/16 p0, 0x1770

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    const/16 p0, 0x1388

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    const/16 p0, 0xbb8

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_7
    const/16 p0, 0x9c4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_8
    const/16 p0, 0x960

    .line 70
    .line 71
    :goto_0
    return p0
.end method

.method public static -$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x5

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p0}, Landroid/hardware/DataSpace;->getStandard(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p0}, Landroid/hardware/DataSpace;->getTransfer(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/high16 v0, 0x60000

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    const/high16 v1, 0x2000000

    .line 29
    .line 30
    if-ne p0, v1, :cond_2

    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-ne p1, v0, :cond_3

    .line 35
    .line 36
    const/high16 p1, 0x1c00000

    .line 37
    .line 38
    if-ne p0, p1, :cond_3

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p0, 0x1

    .line 43
    :goto_0
    return p0
.end method

.method public static -$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v1, 0x160

    .line 10
    .line 11
    const/16 v2, 0x280

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    if-ne p0, v2, :cond_0

    .line 16
    .line 17
    const/16 p0, 0xe4

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    const/16 v1, 0x168

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    if-ne p0, v2, :cond_1

    .line 26
    .line 27
    const/16 p0, 0xe9

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    const/16 v1, 0x1e0

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    if-ne p0, v2, :cond_2

    .line 36
    .line 37
    const/16 p0, 0x137

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x356

    .line 43
    .line 44
    if-ne p0, v1, :cond_3

    .line 45
    .line 46
    const/16 p0, 0x19e

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/16 v1, 0x21c

    .line 50
    .line 51
    if-ne v0, v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x3c0

    .line 54
    .line 55
    if-ne p0, v1, :cond_4

    .line 56
    .line 57
    const/16 p0, 0x20c

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/16 v1, 0x240

    .line 61
    .line 62
    if-ne v0, v1, :cond_5

    .line 63
    .line 64
    const/16 v1, 0x400

    .line 65
    .line 66
    if-ne p0, v1, :cond_5

    .line 67
    .line 68
    const/16 p0, 0x26d

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    const/16 v1, 0x500

    .line 72
    .line 73
    if-ne v0, v1, :cond_6

    .line 74
    .line 75
    const/16 v1, 0x2d0

    .line 76
    .line 77
    if-ne p0, v1, :cond_6

    .line 78
    .line 79
    const/16 p0, 0x3a3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const/16 v1, 0x780

    .line 83
    .line 84
    if-ne v0, v1, :cond_7

    .line 85
    .line 86
    const/16 v1, 0x438

    .line 87
    .line 88
    if-ne p0, v1, :cond_7

    .line 89
    .line 90
    const/16 p0, 0x82f

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    const/16 v1, 0x5a0

    .line 94
    .line 95
    if-ne v0, v1, :cond_8

    .line 96
    .line 97
    const/16 v1, 0xa00

    .line 98
    .line 99
    if-ne p0, v1, :cond_8

    .line 100
    .line 101
    const/16 p0, 0xe8c

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_8
    const/16 v1, 0xf00

    .line 105
    .line 106
    if-ne v0, v1, :cond_9

    .line 107
    .line 108
    const/16 v1, 0x870

    .line 109
    .line 110
    if-ne p0, v1, :cond_9

    .line 111
    .line 112
    const/16 p0, 0x20ba

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_9
    const/16 v1, 0x1e00

    .line 116
    .line 117
    if-ne v0, v1, :cond_a

    .line 118
    .line 119
    const/16 v0, 0x10e0

    .line 120
    .line 121
    if-ne p0, v0, :cond_a

    .line 122
    .line 123
    const p0, 0x82e6

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_a
    const/4 p0, 0x0

    .line 128
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/metrics/MediaItemInfo$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo$Builder;->build()Landroid/media/metrics/MediaItemInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 11
    .line 12
    const-string v0, "androidx\\.media3:media3-(transformer|muxer):[\\d.]+(-(alpha|beta|rc)\\d\\d)?"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p1, Ljava/security/SecureRandom;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    .line 30
    .line 31
    return-void
.end method

.method public static getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string/jumbo v2, "video/x-matroska"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    const/16 v0, 0x29

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :sswitch_1
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    const/16 v0, 0x28

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_2
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_3
    const/16 v0, 0x27

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :sswitch_3
    const-string v2, "audio/true-hd"

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_4
    const/16 v0, 0x26

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :sswitch_4
    const-string v2, "audio/vnd.dts.hd"

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_5
    const/16 v0, 0x25

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :sswitch_5
    const-string v2, "audio/webm"

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_6

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_6
    const/16 v0, 0x24

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :sswitch_6
    const-string v2, "audio/opus"

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_7

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_7
    const/16 v0, 0x23

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :sswitch_7
    const-string v2, "audio/mpeg"

    .line 125
    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_8

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_8
    const/16 v0, 0x22

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :sswitch_8
    const-string v2, "audio/midi"

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_9

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_9
    const/16 v0, 0x21

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :sswitch_9
    const-string v2, "audio/flac"

    .line 153
    .line 154
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_a

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_a
    const/16 v0, 0x20

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :sswitch_a
    const-string v2, "audio/eac3"

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_b

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_b
    const/16 v0, 0x1f

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :sswitch_b
    const-string/jumbo v2, "video/raw"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_c

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_c
    const/16 v0, 0x1e

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :sswitch_c
    const-string/jumbo v2, "video/mp4"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_d

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_d
    const/16 v0, 0x1d

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :sswitch_d
    const-string/jumbo v2, "video/avc"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_e

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_e
    const/16 v0, 0x1c

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :sswitch_e
    const-string/jumbo v2, "video/mp4v-es"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_f

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_f
    const/16 v0, 0x1b

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :sswitch_f
    const-string v2, "audio/wav"

    .line 241
    .line 242
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_10

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_10
    const/16 v0, 0x1a

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :sswitch_10
    const-string v2, "audio/raw"

    .line 255
    .line 256
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-nez v2, :cond_11

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_11
    const/16 v0, 0x19

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :sswitch_11
    const-string v2, "audio/ogg"

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_12

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_12
    const/16 v0, 0x18

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :sswitch_12
    const-string v2, "audio/mp4"

    .line 283
    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_13

    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_13
    const/16 v0, 0x17

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :sswitch_13
    const-string v2, "audio/av4"

    .line 297
    .line 298
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_14

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_14
    const/16 v0, 0x16

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :sswitch_14
    const-string v2, "audio/ac3"

    .line 311
    .line 312
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-nez v2, :cond_15

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_15
    const/16 v0, 0x15

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :sswitch_15
    const-string v2, "application/dash+xml"

    .line 325
    .line 326
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-nez v2, :cond_16

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_16
    const/16 v0, 0x14

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :sswitch_16
    const-string/jumbo v2, "video/x-flv"

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-nez v2, :cond_17

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_17
    const/16 v0, 0x13

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :sswitch_17
    const-string v2, "application/webm"

    .line 354
    .line 355
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-nez v2, :cond_18

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_18
    const/16 v0, 0x12

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :sswitch_18
    const-string v2, "audio/mp4a-latm"

    .line 368
    .line 369
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_19

    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :cond_19
    const/16 v0, 0x11

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :sswitch_19
    const-string v2, "application/vnd.ms-sstr+xml"

    .line 382
    .line 383
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-nez v2, :cond_1a

    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_1a
    const/16 v0, 0x10

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :sswitch_1a
    const-string v2, "application/x-matroska"

    .line 396
    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-nez v2, :cond_1b

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_1b
    const/16 v0, 0xf

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :sswitch_1b
    const-string v2, "audio/x-matroska"

    .line 410
    .line 411
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_1c

    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :cond_1c
    const/16 v0, 0xe

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :sswitch_1c
    const-string v2, "audio/mpeg-L2"

    .line 424
    .line 425
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-nez v2, :cond_1d

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_1d
    const/16 v0, 0xd

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :sswitch_1d
    const-string v2, "audio/mpeg-L1"

    .line 438
    .line 439
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-nez v2, :cond_1e

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_1e
    const/16 v0, 0xc

    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :sswitch_1e
    const-string v2, "application/x-mpegURL"

    .line 452
    .line 453
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-nez v2, :cond_1f

    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_1f
    const/16 v0, 0xb

    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :sswitch_1f
    const-string v2, "audio/vorbis"

    .line 466
    .line 467
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-nez v2, :cond_20

    .line 472
    .line 473
    goto/16 :goto_0

    .line 474
    .line 475
    :cond_20
    const/16 v0, 0xa

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :sswitch_20
    const-string v2, "audio/vnd.dts"

    .line 480
    .line 481
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-nez v2, :cond_21

    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_21
    const/16 v0, 0x9

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :sswitch_21
    const-string v2, "application/mp4"

    .line 494
    .line 495
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-nez v2, :cond_22

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_22
    const/16 v0, 0x8

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :sswitch_22
    const-string/jumbo v2, "video/webm"

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-nez v2, :cond_23

    .line 515
    .line 516
    goto :goto_0

    .line 517
    :cond_23
    const/4 v0, 0x7

    .line 518
    goto :goto_0

    .line 519
    :sswitch_23
    const-string/jumbo v2, "video/mpeg"

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-nez v2, :cond_24

    .line 527
    .line 528
    goto :goto_0

    .line 529
    :cond_24
    const/4 v0, 0x6

    .line 530
    goto :goto_0

    .line 531
    :sswitch_24
    const-string/jumbo v2, "video/mp2t"

    .line 532
    .line 533
    .line 534
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-nez v2, :cond_25

    .line 539
    .line 540
    goto :goto_0

    .line 541
    :cond_25
    const/4 v0, 0x5

    .line 542
    goto :goto_0

    .line 543
    :sswitch_25
    const-string/jumbo v2, "video/hevc"

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-nez v2, :cond_26

    .line 551
    .line 552
    goto :goto_0

    .line 553
    :cond_26
    const/4 v0, 0x4

    .line 554
    goto :goto_0

    .line 555
    :sswitch_26
    const-string/jumbo v2, "video/av01"

    .line 556
    .line 557
    .line 558
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-nez v2, :cond_27

    .line 563
    .line 564
    goto :goto_0

    .line 565
    :cond_27
    const/4 v0, 0x3

    .line 566
    goto :goto_0

    .line 567
    :sswitch_27
    const-string/jumbo v2, "video/3gpp"

    .line 568
    .line 569
    .line 570
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-nez v2, :cond_28

    .line 575
    .line 576
    goto :goto_0

    .line 577
    :cond_28
    const/4 v0, 0x2

    .line 578
    goto :goto_0

    .line 579
    :sswitch_28
    const-string/jumbo v2, "video/dolby-vision"

    .line 580
    .line 581
    .line 582
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-nez v2, :cond_29

    .line 587
    .line 588
    goto :goto_0

    .line 589
    :cond_29
    const/4 v0, 0x1

    .line 590
    goto :goto_0

    .line 591
    :sswitch_29
    const-string v2, "audio/eac3-joc"

    .line 592
    .line 593
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-nez v2, :cond_2a

    .line 598
    .line 599
    goto :goto_0

    .line 600
    :cond_2a
    const/4 v0, 0x0

    .line 601
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 602
    .line 603
    .line 604
    move-object p0, v1

    .line 605
    :pswitch_0
    return-object p0

    .line 606
    nop

    .line 607
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_29
        -0x6e5534ef -> :sswitch_28
        -0x63306f58 -> :sswitch_27
        -0x631b55f6 -> :sswitch_26
        -0x63185e82 -> :sswitch_25
        -0x6315f787 -> :sswitch_24
        -0x6315f167 -> :sswitch_23
        -0x63118f53 -> :sswitch_22
        -0x4a681e4e -> :sswitch_21
        -0x41455b98 -> :sswitch_20
        -0x3bd43e14 -> :sswitch_1f
        -0x3a5c4caa -> :sswitch_1e
        -0x19cc928c -> :sswitch_1d
        -0x19cc928b -> :sswitch_1c
        -0x17118226 -> :sswitch_1b
        -0x106abbe0 -> :sswitch_1a
        -0x957ced0 -> :sswitch_19
        -0x3313c2e -> :sswitch_18
        -0x2974308 -> :sswitch_17
        0xd45707 -> :sswitch_16
        0x3d3887d -> :sswitch_15
        0xb269698 -> :sswitch_14
        0xb2698e6 -> :sswitch_13
        0xb26c538 -> :sswitch_12
        0xb26cbd6 -> :sswitch_11
        0xb26d66f -> :sswitch_10
        0xb26e933 -> :sswitch_f
        0x46cdc642 -> :sswitch_e
        0x4f62373a -> :sswitch_d
        0x4f62635d -> :sswitch_c
        0x4f627494 -> :sswitch_b
        0x59ae0c65 -> :sswitch_a
        0x59aeaa01 -> :sswitch_9
        0x59b1cdba -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59b2d2d8 -> :sswitch_6
        0x59b64a32 -> :sswitch_5
        0x59c2dc42 -> :sswitch_4
        0x5cc95062 -> :sswitch_3
        0x5f50bed8 -> :sswitch_2
        0x5f50bed9 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getListLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    const-string/jumbo v0, "failed_to_get"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    const-string/jumbo v3, "media"

    .line 9
    .line 10
    .line 11
    invoke-static {v3, p0, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string/jumbo v0, "failed to get "

    .line 25
    .line 26
    .line 27
    const-string v1, " from DeviceConfig"

    .line 28
    .line 29
    const-string v2, "MediaMetricsManagerService"

    .line 30
    .line 31
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string p0, ","

    .line 37
    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "media_metrics"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "media"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
