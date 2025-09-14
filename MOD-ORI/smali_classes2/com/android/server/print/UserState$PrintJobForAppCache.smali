.class public final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPrintJobsForRunningApp:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    const/4 v10, 0x0

    .line 12
    :goto_0
    if-ge v10, v8, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v11

    .line 20
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v12, v1

    .line 27
    check-cast v12, Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    const/4 v14, 0x0

    .line 34
    :goto_1
    if-ge v14, v13, :cond_0

    .line 35
    .line 36
    const-string v1, "cached_print_jobs"

    .line 37
    .line 38
    const-wide v2, 0x20b00000005L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    const-string v1, "app_id"

    .line 48
    .line 49
    const-wide v2, 0x10500000001L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v1, v2, v3, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    move-object v6, v2

    .line 66
    check-cast v6, Landroid/print/PrintJobInfo;

    .line 67
    .line 68
    const-string/jumbo v3, "print_job"

    .line 69
    .line 70
    .line 71
    const-wide v15, 0x10b00000002L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    move-object/from16 v2, p1

    .line 77
    .line 78
    move/from16 v17, v10

    .line 79
    .line 80
    move-wide v9, v4

    .line 81
    move-wide v4, v15

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/android/internal/print/DumpUtils;->writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v14, v14, 0x1

    .line 89
    .line 90
    move/from16 v10, v17

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    move/from16 v17, v10

    .line 94
    .line 95
    add-int/lit8 v10, v17, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method
