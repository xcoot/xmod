.class public final synthetic Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
