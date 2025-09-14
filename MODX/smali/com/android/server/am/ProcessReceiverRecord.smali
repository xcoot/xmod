.class public final Lcom/android/server/am/ProcessReceiverRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCurReceivers:Landroid/util/ArraySet;

.field public mCurReceiversSize:I

.field public final mReceivers:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 18
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    iput-object p1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 22
    return-void
.end method


# virtual methods
.method public final dumpReceivers(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 16
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v3, v1, :cond_0

    .line 24
    iget-object v4, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 26
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/am/ReceiverList;

    .line 32
    invoke-virtual {v4}, Lcom/android/server/am/ReceiverList;->toString()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Lcom/android/server/am/ProcessReceiverRecord$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 50
    const-string p0, "Receiver list:"

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result p0

    .line 59
    :goto_1
    if-ge v2, p0, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "    #"

    .line 65
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, ":"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    return-void
.end method
