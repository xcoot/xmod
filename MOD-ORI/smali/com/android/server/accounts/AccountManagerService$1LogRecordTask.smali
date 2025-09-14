.class public final Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final accountId:J

.field public final action:Ljava/lang/String;

.field public final callingUid:I

.field public final tableName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final userDebugDbInsertionPoint:J


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 13
    .line 14
    iput p7, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    .line 15
    .line 16
    iput-wide p8, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "Failed to insert a log record. accountId="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->getStatementForLogging()Landroid/database/sqlite/SQLiteStatement;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    iget-wide v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-virtual {v2, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 39
    .line 40
    new-instance v4, Ljava/util/Date;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x3

    .line 50
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    .line 54
    .line 55
    int-to-long v3, v3

    .line 56
    const/4 v5, 0x4

    .line 57
    invoke-virtual {v2, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v4, 0x5

    .line 63
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-wide v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    .line 67
    .line 68
    const/4 v5, 0x6

    .line 69
    invoke-virtual {v2, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :catch_0
    move-exception v3

    .line 82
    :try_start_3
    const-string v4, "AccountManagerService"

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-wide v6, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    .line 90
    .line 91
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " action="

    .line 95
    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, " tableName="

    .line 105
    .line 106
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p0, " Error: "

    .line 115
    .line 116
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :goto_1
    :try_start_4
    monitor-exit v1

    .line 131
    return-void

    .line 132
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    throw p0
.end method
