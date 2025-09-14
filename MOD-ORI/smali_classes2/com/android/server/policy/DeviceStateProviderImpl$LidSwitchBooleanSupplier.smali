.class public final Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final mExpectedOpen:Z

.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-boolean p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    .line 17
    .line 18
    if-ne v1, p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Have not received lid switch value."

    .line 30
    .line 31
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
