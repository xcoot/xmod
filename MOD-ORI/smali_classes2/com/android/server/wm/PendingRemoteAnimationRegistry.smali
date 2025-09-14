.class public final Lcom/android/server/wm/PendingRemoteAnimationRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEntries:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method
