.class public final Lcom/android/server/wm/TaskSystemBarsListenerController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mListeners:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    return-void
.end method
