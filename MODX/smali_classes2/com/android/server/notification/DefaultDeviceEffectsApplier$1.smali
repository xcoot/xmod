.class public final Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;->this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;->this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;->this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    .line 9
    .line 10
    new-instance p2, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
