.class public final Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "bootChecking() - run"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    .line 12
    .line 13
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkDOOnBoot()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkPOOnBoot()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLMOnBoot()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKesOnBoot()V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELMOnBoot()V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnBoot()V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    .line 110
    .line 111
    const-string p0, "bootChecking() - finished"

    .line 112
    .line 113
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
