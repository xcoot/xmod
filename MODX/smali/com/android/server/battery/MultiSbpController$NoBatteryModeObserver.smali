.class public final Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Ljava/lang/Runnable;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mNoBatteryModeState:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    iput-object p2, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 6
    const-string/jumbo p1, "no_battery_mode"

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 16
    if-nez p1, :cond_0

    .line 18
    if-nez p3, :cond_0

    .line 20
    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    const-string p2, "NoBatteryModeObserver is created with "

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget p0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 32
    const-string p2, "[SS]MultiSbpController.NoBatteryModeObserver"

    .line 34
    invoke-static {p1, p0, p2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 6
    const-string/jumbo v1, "no_battery_mode"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v1, "onChange mIsNoBatteryModeEnabled:"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "["

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, "]"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const-string v0, "[SS]MultiSbpController.NoBatteryModeObserver"

    .line 48
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v0, "mIsNoBatteryModeEnabled:"

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {v0, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mCallback:Ljava/lang/Runnable;

    .line 74
    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_0
    return-void
.end method
