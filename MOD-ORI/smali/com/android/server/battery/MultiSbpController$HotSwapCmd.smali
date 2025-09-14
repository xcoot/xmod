.class final enum Lcom/android/server/battery/MultiSbpController$HotSwapCmd;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final enum DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final enum OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final enum ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final isFactoryBinary:Z

.field public static final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public static final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 2
    .line 3
    const-string v1, "DO_NOTHING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 12
    .line 13
    const-string v2, "OFF"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 22
    .line 23
    const-string v3, "ON"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->$VALUES:[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 36
    .line 37
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 44
    .line 45
    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 46
    .line 47
    new-instance v0, Landroid/os/Binder;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mToken:Landroid/os/IBinder;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput-boolean v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->isFactoryBinary:Z

    .line 59
    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/battery/MultiSbpController$HotSwapCmd;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->$VALUES:[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->isFactoryBinary:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "run not supported in factory binary hotSwapCmd : "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "[SS]MultiSbpControllerHotSwapCmd"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 27
    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    sget-object p0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 31
    .line 32
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mToken:Landroid/os/IBinder;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->enableWakeUpPrevention(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 39
    .line 40
    if-ne p0, v0, :cond_2

    .line 41
    .line 42
    sget-object p0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 43
    .line 44
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mToken:Landroid/os/IBinder;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManagerInternal;->disableWakeUpPrevention(Landroid/os/IBinder;Z)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method
