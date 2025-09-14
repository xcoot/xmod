.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppRegistered:Z

.field public mConnectionState:I

.field public mFocusedDeviceToString:Ljava/lang/String;

.field public mPluggedDeviceToString:Ljava/lang/String;

.field public mPluggedDeviceToStringList:Ljava/lang/String;

.field public mToLocalTablet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 7
    const-string/jumbo v1, "null"

    .line 10
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final Equals(Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 3
    iget v1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 12
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 20
    or-int/lit8 v0, v0, 0x2

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 24
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 32
    or-int/lit8 v0, v0, 0x4

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 36
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 44
    or-int/lit8 v0, v0, 0x8

    .line 46
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 48
    iget-boolean v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 50
    if-eq v1, v2, :cond_4

    .line 52
    or-int/lit8 v0, v0, 0x10

    .line 54
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    .line 56
    iget-boolean p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    .line 58
    if-eq p0, p1, :cond_5

    .line 60
    or-int/lit8 v0, v0, 0x20

    .line 62
    :cond_5
    return v0
.end method
