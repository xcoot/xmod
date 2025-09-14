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

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/content/SyncOperation;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/content/SyncOperation;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 11
    .line 12
    iget-wide v2, p2, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 31
    .line 32
    iget-object v0, p2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 33
    .line 34
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 35
    .line 36
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 48
    .line 49
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 52
    .line 53
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 54
    .line 55
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    :goto_1
    move p0, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 66
    .line 67
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 70
    .line 71
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {p0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget p0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    .line 92
    .line 93
    iget v0, p2, Lcom/android/server/content/SyncOperation;->reason:I

    .line 94
    .line 95
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 103
    .line 104
    iget-wide v2, p2, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 105
    .line 106
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 114
    .line 115
    iget-wide v2, p2, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 116
    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    iget p0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 125
    .line 126
    int-to-long p0, p0

    .line 127
    iget p2, p2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 128
    .line 129
    int-to-long v0, p2

    .line 130
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_8

    .line 135
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
