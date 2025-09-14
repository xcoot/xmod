.class public final Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 3
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5
    iget-object p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 10
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v0

    .line 16
    new-instance v1, Landroid/util/SparseArray;

    .line 18
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v0, :cond_0

    .line 25
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 27
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/autofill/Session;

    .line 35
    iget v5, v4, Lcom/android/server/autofill/Session;->id:I

    .line 37
    iget-object v4, v4, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 39
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_5

    .line 48
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 51
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 57
    move v3, v2

    .line 58
    :goto_1
    if-ge v3, v0, :cond_2

    .line 60
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/os/IBinder;

    .line 66
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_1

    .line 72
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 84
    iget-object v3, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter v3

    .line 87
    :goto_2
    if-ge v2, v0, :cond_6

    .line 89
    :try_start_1
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 91
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 96
    move-result v4

    .line 97
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 103
    if-eqz p1, :cond_5

    .line 105
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 108
    move-result-object v4

    .line 109
    iget-object v5, p1, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 111
    if-ne v4, v5, :cond_5

    .line 113
    iget-object v4, p1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 115
    iget-boolean v4, v4, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 117
    if-eqz v4, :cond_3

    .line 119
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 121
    if-eqz v4, :cond_5

    .line 123
    const-string v4, "AutofillManagerServiceImpl"

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v6, "Session "

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget p1, p1, Lcom/android/server/autofill/Session;->id:I

    .line 137
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string p1, " is saving"

    .line 142
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_3

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 157
    if-eqz v4, :cond_4

    .line 159
    const-string v4, "AutofillManagerServiceImpl"

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v6, "Prune session "

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget v6, p1, Lcom/android/server/autofill/Session;->id:I

    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v6, " ("

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v6, p1, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v6, ")"

    .line 188
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 195
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 201
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 203
    goto :goto_2

    .line 204
    :cond_6
    monitor-exit v3

    .line 205
    const/4 p0, 0x0

    .line 206
    return-object p0

    .line 207
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    throw p0

    .line 209
    :goto_5
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    throw p0
.end method
