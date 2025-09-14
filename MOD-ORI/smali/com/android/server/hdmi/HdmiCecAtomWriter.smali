.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static earcStatusChanged(IIIZZ)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    if-eq p0, v4, :cond_2

    .line 9
    .line 10
    if-eq p0, v3, :cond_1

    .line 11
    .line 12
    if-eq p0, v2, :cond_0

    .line 13
    .line 14
    move v8, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v8, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v8, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move v8, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_3
    move v8, v4

    .line 23
    :goto_0
    if-eqz p1, :cond_7

    .line 24
    .line 25
    if-eq p1, v4, :cond_6

    .line 26
    .line 27
    if-eq p1, v3, :cond_5

    .line 28
    .line 29
    if-eq p1, v2, :cond_4

    .line 30
    .line 31
    move v9, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_4
    move v9, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_5
    move v9, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_6
    move v9, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_7
    move v9, v4

    .line 40
    :goto_1
    const/16 v5, 0x2bd

    .line 41
    .line 42
    move v6, p3

    .line 43
    move v7, p4

    .line 44
    move v10, p2

    .line 45
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZIII)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v1, p4

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    move v10, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 v1, v1, 0xa

    .line 11
    .line 12
    move v10, v1

    .line 13
    :goto_0
    iget v7, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 14
    .line 15
    iget v9, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 18
    .line 19
    if-eqz v9, :cond_4

    .line 20
    .line 21
    const/16 v2, 0x44

    .line 22
    .line 23
    if-eq v9, v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    new-instance v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    .line 34
    .line 35
    .line 36
    array-length v4, v1

    .line 37
    if-lez v4, :cond_3

    .line 38
    .line 39
    aget-byte v1, v1, v3

    .line 40
    .line 41
    const/16 v3, 0x1e

    .line 42
    .line 43
    if-lt v1, v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x29

    .line 46
    .line 47
    if-gt v1, v3, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    iput v1, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    add-int/lit16 v1, v1, 0x100

    .line 54
    .line 55
    iput v1, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    .line 56
    .line 57
    :cond_3
    :goto_1
    move-object v1, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    new-instance v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    .line 60
    .line 61
    invoke-direct {v2}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    .line 62
    .line 63
    .line 64
    array-length v4, v1

    .line 65
    if-lez v4, :cond_3

    .line 66
    .line 67
    aget-byte v3, v1, v3

    .line 68
    .line 69
    and-int/lit16 v3, v3, 0xff

    .line 70
    .line 71
    iput v3, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 72
    .line 73
    array-length v3, v1

    .line 74
    const/4 v4, 0x1

    .line 75
    if-le v3, v4, :cond_3

    .line 76
    .line 77
    aget-byte v1, v1, v4

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0xa

    .line 80
    .line 81
    iput v1, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :goto_2
    iget v11, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    .line 85
    .line 86
    iget v12, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 87
    .line 88
    iget v13, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    .line 89
    .line 90
    iget v8, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 91
    .line 92
    move-object v4, p0

    .line 93
    move/from16 v5, p3

    .line 94
    .line 95
    move/from16 v6, p2

    .line 96
    .line 97
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->writeHdmiCecMessageReportedAtom(IIIIIIIII)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public writeHdmiCecMessageReportedAtom(IIIIIIIII)V
    .locals 10

    .line 1
    const/16 v0, 0x136

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move/from16 v6, p6

    .line 9
    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    move/from16 v8, p8

    .line 13
    .line 14
    move/from16 v9, p9

    .line 15
    .line 16
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIII)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
