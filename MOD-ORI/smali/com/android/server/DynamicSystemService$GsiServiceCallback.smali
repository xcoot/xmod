.class public final Lcom/android/server/DynamicSystemService$GsiServiceCallback;
.super Landroid/gsi/IGsiServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/gsi/IGsiServiceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final declared-synchronized onResult(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
