.class public final synthetic Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ManagedServices$1;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ManagedServices$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ManagedServices$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$1;->mRemovedInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    const/4 v3, 0x1

    .line 21
    :try_start_0
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(ILandroid/content/ComponentName;Z)V

    .line 22
    .line 23
    .line 24
    monitor-exit v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p0}, Lcom/android/server/notification/ManagedServices;->reregisterService(Landroid/content/ComponentName;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
