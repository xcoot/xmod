.class public final Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnAnimationCancelled:Ljava/util/List;

.field public final mOnAnimationFinished:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    .line 10
    .line 11
    new-instance p1, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method
