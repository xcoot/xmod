.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Landroid/util/SparseBooleanArray;


# direct methods
.method public synthetic constructor <init>(IILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$0:I

    .line 6
    iput p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    iput-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    .line 12
    iput-object p5, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$4:Landroid/util/SparseBooleanArray;

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$0:I

    .line 3
    iget v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$4:Landroid/util/SparseBooleanArray;

    .line 11
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 13
    const-string v4, "Adding MP: "

    .line 15
    if-eqz p1, :cond_3

    .line 17
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 19
    if-eqz v5, :cond_3

    .line 21
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 23
    if-lez v5, :cond_3

    .line 25
    if-eq v5, v0, :cond_3

    .line 27
    if-eq v5, v1, :cond_3

    .line 29
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 31
    if-eq v5, v0, :cond_3

    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 36
    move-result v1

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 42
    const-string v7, "android.providers.media.module"

    .line 44
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    const-string p0, "Adding MP++"

    .line 52
    const-string p1, "ActivityManager"

    .line 54
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 64
    move-result p0

    .line 65
    add-int/2addr p0, v6

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v3, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "Failed to add MP pid: "

    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    const/4 p0, 0x0

    .line 112
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    const-string p0, "Adding MP--"

    .line 117
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 123
    if-eqz v0, :cond_1

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 135
    iget-boolean p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 137
    if-eqz p1, :cond_2

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 150
    :cond_3
    :goto_1
    return-void
.end method
