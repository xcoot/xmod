.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/content/SyncOperation;

    .line 5
    check-cast p2, Lcom/android/server/content/SyncOperation;

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 10
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 12
    iget-wide v2, p2, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 26
    move-result p0

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 30
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 32
    iget-object v0, p2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 34
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 36
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 45
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 47
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 49
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 51
    iget-object v2, p2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 53
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 55
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 57
    invoke-interface {p0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 63
    :goto_1
    move p0, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 67
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 69
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 71
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 73
    invoke-interface {p0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 82
    iget-object v1, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 84
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_4

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget p0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    .line 93
    iget v0, p2, Lcom/android/server/content/SyncOperation;->reason:I

    .line 95
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_5

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 104
    iget-wide v2, p2, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 106
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_6

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 115
    iget-wide v2, p2, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_7

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    iget p0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 126
    int-to-long p0, p0

    .line 127
    iget p2, p2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 129
    int-to-long v0, p2

    .line 130
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_8

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    const/4 p0, 0x0

    .line 138
    :goto_2
    return p0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
