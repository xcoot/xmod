.class public final Lcom/android/server/usb/PowerBoostSetter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPreviousTimeout:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    .line 8
    .line 9
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final boostPower()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p0, "PowerBoostSetter"

    .line 20
    .line 21
    const-string v0, "PowerManagerInternal null"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    .line 36
    .line 37
    const-wide/16 v2, 0x1d4c

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :cond_2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    const/16 v1, 0x3a98

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method
