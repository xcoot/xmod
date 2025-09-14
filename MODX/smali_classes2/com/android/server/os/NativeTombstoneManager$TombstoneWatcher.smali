.class public final Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;
.super Landroid/os/FileObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public constructor <init>(Lcom/android/server/os/NativeTombstoneManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 2
    .line 3
    sget-object p1, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    .line 4
    .line 5
    const/16 v0, 0x180

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    .line 4
    .line 5
    const-string p0, "NativeTombstoneManager"

    .line 6
    .line 7
    const-string/jumbo p1, "path is null at TombstoneWatcher.onEvent()"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v0, p0, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
