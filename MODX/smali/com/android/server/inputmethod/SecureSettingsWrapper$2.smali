.class public final Lcom/android/server/inputmethod/SecureSettingsWrapper$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$2;->val$userId:I

    .line 6
    return-void
.end method


# virtual methods
.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Landroid/util/SparseArray;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$2;->val$userId:I

    .line 6
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
