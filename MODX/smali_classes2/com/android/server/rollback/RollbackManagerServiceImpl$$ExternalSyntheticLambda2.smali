.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 18
    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 28
    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_1
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 67
    .line 68
    check-cast v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ge v1, v2, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 77
    .line 78
    check-cast v2, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 101
    .line 102
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
