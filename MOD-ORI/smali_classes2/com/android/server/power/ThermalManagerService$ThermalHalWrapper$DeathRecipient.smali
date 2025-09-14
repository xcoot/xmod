.class public final Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x15ec

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "ThermalManagerService$ThermalHalWrapper"

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Thermal HAL service died cookie: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    const/4 v0, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p0, v0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_0
    if-ge v0, v2, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/os/Temperature;

    .line 61
    .line 62
    invoke-interface {v3, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    goto :goto_3

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    throw p0

    .line 77
    :goto_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    throw p0

    .line 79
    :cond_1
    :goto_3
    return-void
.end method
