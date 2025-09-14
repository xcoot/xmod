.class public final Lcom/android/server/SerialService$1;
.super Landroid/hardware/SerialManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SerialService;


# direct methods
.method public constructor <init>(Lcom/android/server/SerialService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/SerialManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addVirtualSerialPortForTest(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 6

    .line 1
    const-string v0, " must be under virtual:"

    .line 2
    .line 3
    const-string v1, "Port "

    .line 4
    .line 5
    const-string v2, "Port "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 13
    .line 14
    iget-object v4, v4, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    xor-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " already defined"

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v4, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "virtual:"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    monitor-exit v3

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final removeVirtualSerialPortForTest(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, " must be under virtual:"

    .line 2
    .line 3
    const-string v1, "Port "

    .line 4
    .line 5
    const-string v2, "Port "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 13
    .line 14
    iget-object v4, v4, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " not yet defined"

    .line 29
    .line 30
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v4, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "virtual:"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    monitor-exit v3

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method
