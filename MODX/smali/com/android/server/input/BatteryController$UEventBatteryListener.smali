.class abstract Lcom/android/server/input/BatteryController$UEventBatteryListener;
.super Lcom/android/server/input/UEventManager$UEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/input/UEventManager$UEventListener;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract onBatteryUEvent(J)V
.end method

.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 7
    if-eqz v2, :cond_0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "UEventListener: Received UEvent: "

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v3, " eventTime: "

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "BatteryController"

    .line 33
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    const-string v2, "ACTION"

    .line 38
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const-string v3, "CHANGE"

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 50
    const-string v2, "SUBSYSTEM"

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    const-string v2, "POWER_SUPPLY"

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/BatteryController$UEventBatteryListener;->onBatteryUEvent(J)V

    .line 68
    :cond_2
    :goto_0
    return-void
.end method
