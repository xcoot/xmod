.class public final Lcom/android/server/inputmethod/UserDataRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBindingControllerFactory:Ljava/util/function/IntFunction;

.field public final mUserData:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/pm/UserManagerInternal;Ljava/util/function/IntFunction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Landroid/util/SparseArray;

    .line 11
    iput-object p3, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    .line 13
    new-instance p3, Lcom/android/server/inputmethod/UserDataRepository$1;

    .line 15
    invoke-direct {p3, p0, p1}, Lcom/android/server/inputmethod/UserDataRepository$1;-><init>(Lcom/android/server/inputmethod/UserDataRepository;Landroid/os/Handler;)V

    .line 18
    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getOrCreate(I)Lcom/android/server/inputmethod/UserDataRepository$UserData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 13
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    .line 15
    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 21
    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/UserDataRepository$UserData;-><init>(ILcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    :cond_0
    return-object v0
.end method
