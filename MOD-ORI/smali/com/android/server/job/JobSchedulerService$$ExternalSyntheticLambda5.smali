.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->f$0:I

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
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->f$0:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 11
    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v0, p0, :cond_1

    .line 17
    .line 18
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 19
    .line 20
    if-ne p1, p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0

    .line 27
    :pswitch_0
    const/4 v0, -0x1

    .line 28
    if-eq p0, v0, :cond_3

    .line 29
    .line 30
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 31
    .line 32
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eq v0, p0, :cond_3

    .line 37
    .line 38
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 39
    .line 40
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, p0, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 50
    :goto_3
    return p0

    .line 51
    :pswitch_1
    const/4 v0, -0x1

    .line 52
    if-eq p0, v0, :cond_5

    .line 53
    .line 54
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 55
    .line 56
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eq v0, p0, :cond_5

    .line 61
    .line 62
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 63
    .line 64
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ne p1, p0, :cond_4

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/4 p0, 0x0

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    :goto_4
    const/4 p0, 0x1

    .line 74
    :goto_5
    return p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
