.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2
    const-string v0, "android:media_routing_control"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {p0, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$mrevokeManagerRecordAccessIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl;Ljava/lang/String;I)V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
