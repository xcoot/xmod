.class public final synthetic Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/UserDataRepository$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/UserDataRepository$1;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/UserDataRepository$1;

    .line 5
    iput p2, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/UserDataRepository$1;

    .line 8
    iget p0, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/UserDataRepository$1;->this$0:Lcom/android/server/inputmethod/UserDataRepository;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/UserDataRepository$1;

    .line 28
    iget p0, p0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;->f$1:I

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 35
    monitor-enter v1

    .line 36
    :try_start_1
    iget-object v0, v0, Lcom/android/server/inputmethod/UserDataRepository$1;->this$0:Lcom/android/server/inputmethod/UserDataRepository;

    .line 38
    iget-object v0, v0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    throw p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
