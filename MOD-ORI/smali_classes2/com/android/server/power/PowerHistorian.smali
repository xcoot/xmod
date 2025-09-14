.class public final Lcom/android/server/power/PowerHistorian;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/power/PowerHistorian;


# instance fields
.field public final mRecordCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/PowerHistorian;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/power/PowerHistorian;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 12
    .line 13
    const/16 v1, 0x32

    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 23
    .line 24
    const/16 v2, 0x64

    .line 25
    .line 26
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 34
    .line 35
    const/16 v2, 0xc8

    .line 36
    .line 37
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-virtual {v0, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final addRecord(ILcom/android/server/power/PowerHistorian$Record;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mCapacity:I

    .line 24
    .line 25
    if-lt p1, v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PowerHistorian:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "  WakeLock Release History:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 27
    .line 28
    .line 29
    const-string v0, "  DisplayGroup History:"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 47
    .line 48
    .line 49
    const-string v0, "  WakeUp History:"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 67
    .line 68
    .line 69
    const-string v0, "  AutomaticBrightness History:"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 87
    .line 88
    .line 89
    const-string v0, "  BrightnessReason History:"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 95
    .line 96
    const/4 v0, 0x2

    .line 97
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
