.class public Lcom/att/iqi/lib/metrics/ea/EA11;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final ALL_SETTINGS_UNKNOWN:[B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final KEY_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final KEY_ENABLE_ALERTS_MASTER_TOGGLE:Ljava/lang/String; = "enable_alerts_master_toggle"

.field public static final KEY_ENABLE_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final KEY_ENABLE_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final KEY_ENABLE_CMAS_AMBER_ALERTS:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final KEY_ENABLE_CMAS_EXTREME_THREAT_ALERTS:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final KEY_ENABLE_CMAS_PRESIDENTIAL_ALERTS:Ljava/lang/String; = "enable_cmas_presidential_alerts"

.field public static final KEY_ENABLE_CMAS_SEVERE_THREAT_ALERTS:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final KEY_ENABLE_EMERGENCY_ALERTS:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final KEY_ENABLE_EXERCISE_ALERTS:Ljava/lang/String; = "enable_exercise_alerts"

.field public static final KEY_ENABLE_PUBLIC_SAFETY_MESSAGES:Ljava/lang/String; = "enable_public_safety_messages"

.field public static final KEY_ENABLE_PUBLIC_SAFETY_MESSAGES_FULL_SCREEN:Ljava/lang/String; = "enable_public_safety_messages_full_screen"

.field public static final KEY_ENABLE_STATE_LOCAL_TEST_ALERTS:Ljava/lang/String; = "enable_state_local_test_alerts"

.field public static final KEY_ENABLE_TEST_ALERTS:Ljava/lang/String; = "enable_test_alerts"

.field public static final KEY_OPERATOR_DEFINED_ALERTS:Ljava/lang/String; = "enable_operator_defined_alerts"

.field public static final KEY_OVERRIDE_DND:Ljava/lang/String; = "override_dnd"

.field public static final KEY_RECEIVE_CMAS_IN_SECOND_LANGUAGE:Ljava/lang/String; = "receive_cmas_in_second_language"

.field private static final SETTING_DISABLED:B = 0x0t

.field private static final SETTING_ENABLED:B = 0x1t

.field private static final SETTING_MASK:B = 0x3t

.field private static final sPreferenceKeys:[Ljava/lang/String;


# instance fields
.field private final dwFlags:[B

.field private mBooleanIndex:I

.field private mBooleanShift:I

.field private szInterval:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "EA11"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    .line 17
    .line 18
    const-string/jumbo v15, "override_dnd"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v16, "receive_cmas_in_second_language"

    .line 22
    .line 23
    .line 24
    const-string v1, "enable_alerts_master_toggle"

    .line 25
    .line 26
    const-string v2, "enable_cmas_presidential_alerts"

    .line 27
    .line 28
    const-string v3, "enable_cmas_extreme_threat_alerts"

    .line 29
    .line 30
    const-string v4, "enable_cmas_severe_threat_alerts"

    .line 31
    .line 32
    const-string v5, "enable_cmas_amber_alerts"

    .line 33
    .line 34
    const-string v6, "enable_public_safety_messages"

    .line 35
    .line 36
    const-string v7, "enable_emergency_alerts"

    .line 37
    .line 38
    const-string v8, "enable_test_alerts"

    .line 39
    .line 40
    const-string v9, "enable_exercise_alerts"

    .line 41
    .line 42
    const-string v10, "enable_operator_defined_alerts"

    .line 43
    .line 44
    const-string v11, "enable_state_local_test_alerts"

    .line 45
    .line 46
    const-string v12, "enable_public_safety_messages_full_screen"

    .line 47
    .line 48
    const-string v13, "enable_alert_vibrate"

    .line 49
    .line 50
    const-string v14, "enable_alert_speech"

    .line 51
    .line 52
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->sPreferenceKeys:[Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Lcom/att/iqi/lib/metrics/ea/EA11$1;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ea/EA11$1;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 1
        -0x56t
        -0x56t
        -0x56t
        -0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    sget-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    .line 3
    const-string v2, ""

    iput-object v2, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    const/4 v3, 0x6

    .line 5
    iput v3, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 6
    array-length p0, v0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 8
    sget-object v0, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    const/4 v1, 0x6

    .line 11
    iput v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    return-void
.end method

.method private advanceField()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 16
    .line 17
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 18
    .line 19
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKeys()[Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    .line 3
    .line 4
    const/4 v1, 0x6

    .line 5
    iput v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 6
    .line 7
    sget-object v1, Lcom/att/iqi/lib/metrics/ea/EA11;->ALL_SETTINGS_UNKNOWN:[B

    .line 8
    .line 9
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    invoke-static {v1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lcom/att/iqi/lib/metrics/ea/EA11;->sPreferenceKeys:[Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setBoolean(Z)Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    aget-byte v2, v1, v0

    .line 9
    .line 10
    iget v3, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->mBooleanShift:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    shl-int/2addr v4, v3

    .line 14
    not-int v4, v4

    .line 15
    and-int/2addr v2, v4

    .line 16
    int-to-byte v2, v2

    .line 17
    aput-byte v2, v1, v0

    .line 18
    .line 19
    shl-int/2addr p1, v3

    .line 20
    or-int/2addr p1, v2

    .line 21
    int-to-byte p1, p1

    .line 22
    aput-byte p1, v1, v0

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA11;->advanceField()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string/jumbo p1, "out of bounds"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public setInterval(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUnknown()Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA11;->advanceField()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->dwFlags:[B

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/ea/EA11;->szInterval:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
