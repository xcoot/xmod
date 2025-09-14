.class public final synthetic Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>(I[I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->f$0:[I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->f$0:[I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 11
    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    return p0

    .line 23
    :pswitch_0
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    xor-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    return p0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
