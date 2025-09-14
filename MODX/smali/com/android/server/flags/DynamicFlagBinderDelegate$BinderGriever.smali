.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 6
    iput p2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->mPid:I

    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 3
    iget-object v0, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 8
    iget-object v1, v1, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 10
    iget p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->mPid:I

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
