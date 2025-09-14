.class public final Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

.field public final mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

.field public final mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

.field public final mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

.field public final mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

.field public final mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;-><init>(Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;-><init>(Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x18

    .line 28
    .line 29
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 37
    .line 38
    new-instance v1, Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 44
    .line 45
    new-instance v1, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    iput-boolean v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 61
    .line 62
    iput-boolean v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 63
    .line 64
    const/16 v1, 0x7c00

    .line 65
    .line 66
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    .line 67
    .line 68
    new-instance v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 74
    .line 75
    const-string/jumbo v2, "ro.boot.debug_level"

    .line 76
    .line 77
    .line 78
    const-string v3, "0x4f4c"

    .line 79
    .line 80
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v3, 0x0

    .line 89
    if-nez v2, :cond_0

    .line 90
    .line 91
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    .line 92
    .line 93
    if-nez v2, :cond_0

    .line 94
    .line 95
    iget-boolean v1, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mLoadSuccess:Z

    .line 96
    .line 97
    if-nez v1, :cond_1

    .line 98
    .line 99
    :cond_0
    iput-boolean v3, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 100
    .line 101
    :cond_1
    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 102
    .line 103
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemorySizeKb()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    long-to-int v1, v1

    .line 108
    const/high16 v2, 0xc00000

    .line 109
    .line 110
    const/high16 v4, 0x800000

    .line 111
    .line 112
    if-le v1, v2, :cond_2

    .line 113
    .line 114
    iput v4, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const/high16 v2, 0x600000

    .line 118
    .line 119
    if-le v1, v4, :cond_3

    .line 120
    .line 121
    iput v2, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    const/high16 v4, 0x400000

    .line 125
    .line 126
    if-le v1, v2, :cond_4

    .line 127
    .line 128
    iput v4, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    if-le v1, v4, :cond_5

    .line 132
    .line 133
    const/high16 v1, 0x300000

    .line 134
    .line 135
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 136
    .line 137
    :cond_5
    :goto_0
    iget v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 138
    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    iput-boolean v3, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 143
    .line 144
    :goto_1
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 145
    .line 146
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-boolean v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->KILL_DISABLED:Z

    .line 152
    .line 153
    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    .line 154
    .line 155
    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    .line 156
    .line 157
    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    .line 158
    .line 159
    iput-object p3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 160
    .line 161
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 162
    .line 163
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 164
    .line 165
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final dumpKillStatus(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "\nKill status"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "  Spec kill count after boot: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    .line 19
    .line 20
    const-string v2, "  Global kill count after boot: "

    .line 21
    .line 22
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    .line 27
    .line 28
    const-string v2, "  AlwaysRunning kill count after boot: "

    .line 29
    .line 30
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    .line 35
    .line 36
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final dumpProcessList(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "\nProcess List"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "  In-progress process List (length="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string v3, "    "

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p1, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "  Protected process List (length="

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "  Reported process List (length="

    .line 114
    .line 115
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 119
    .line 120
    check-cast p0, Ljava/util/LinkedList;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 13

    .line 1
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    .line 12
    .line 13
    :goto_0
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 19
    .line 20
    neg-int v1, v0

    .line 21
    and-int/2addr v0, v1

    .line 22
    const/16 v1, 0x20

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    .line 32
    .line 33
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 34
    .line 35
    invoke-static {v0, v2, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    const/16 v1, 0x8

    .line 44
    .line 45
    if-ne v0, v1, :cond_6

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    .line 52
    .line 53
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 54
    .line 55
    invoke-static {v0, v2, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :pswitch_0
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 64
    .line 65
    invoke-static {v0}, Landroid/os/Process;->getRss(I)[J

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    array-length v1, v0

    .line 72
    const/4 v2, 0x4

    .line 73
    if-ge v1, v2, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/4 v1, 0x0

    .line 77
    move v3, v1

    .line 78
    :goto_1
    const-wide/32 v4, 0x7fffffff

    .line 79
    .line 80
    .line 81
    const-wide/16 v6, 0x0

    .line 82
    .line 83
    iget-object v8, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 84
    .line 85
    if-ge v3, v2, :cond_3

    .line 86
    .line 87
    aget-wide v9, v0, v3

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    cmp-long v6, v9, v6

    .line 93
    .line 94
    if-ltz v6, :cond_6

    .line 95
    .line 96
    cmp-long v4, v9, v4

    .line 97
    .line 98
    if-gtz v4, :cond_6

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v2, 0x2

    .line 104
    aget-wide v9, v0, v2

    .line 105
    .line 106
    const/4 v3, 0x3

    .line 107
    aget-wide v11, v0, v3

    .line 108
    .line 109
    add-long/2addr v9, v11

    .line 110
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    cmp-long v6, v9, v6

    .line 114
    .line 115
    if-ltz v6, :cond_6

    .line 116
    .line 117
    cmp-long v4, v9, v4

    .line 118
    .line 119
    if-gtz v4, :cond_6

    .line 120
    .line 121
    iget v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 122
    .line 123
    neg-int v5, v4

    .line 124
    and-int/2addr v4, v5

    .line 125
    const/16 v5, 0x20

    .line 126
    .line 127
    if-ne v4, v5, :cond_4

    .line 128
    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    .line 134
    .line 135
    long-to-int v0, v9

    .line 136
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/16 v5, 0x8

    .line 140
    .line 141
    if-ne v4, v5, :cond_6

    .line 142
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    iput-wide v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    .line 148
    .line 149
    long-to-int v4, v9

    .line 150
    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    .line 151
    .line 152
    aget-wide v4, v0, v1

    .line 153
    .line 154
    long-to-int v1, v4

    .line 155
    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    .line 156
    .line 157
    const/4 v1, 0x1

    .line 158
    aget-wide v4, v0, v1

    .line 159
    .line 160
    long-to-int v1, v4

    .line 161
    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    .line 162
    .line 163
    aget-wide v1, v0, v2

    .line 164
    .line 165
    long-to-int v1, v1

    .line 166
    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    .line 167
    .line 168
    aget-wide v0, v0, v3

    .line 169
    .line 170
    long-to-int v0, v0

    .line 171
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v1, "Process.getRss("

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ") error."

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    .line 199
    .line 200
    packed-switch v0, :pswitch_data_1

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 211
    .line 212
    neg-int v2, v1

    .line 213
    and-int/2addr v1, v2

    .line 214
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 215
    .line 216
    const/16 v2, 0x20

    .line 217
    .line 218
    const-string v3, "KB Threshold="

    .line 219
    .line 220
    if-ne v1, v2, :cond_9

    .line 221
    .line 222
    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    .line 223
    .line 224
    long-to-int v1, v1

    .line 225
    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getAlwaysRunningSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    goto/16 :goto_8

    .line 232
    .line 233
    :cond_7
    mul-int/lit8 v0, v0, 0x6

    .line 234
    .line 235
    div-int/lit8 v0, v0, 0x5

    .line 236
    .line 237
    if-le v1, v0, :cond_8

    .line 238
    .line 239
    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 240
    .line 241
    or-int/lit16 v2, v2, 0x1000

    .line 242
    .line 243
    iput v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 244
    .line 245
    const-string v2, "Trigger AlwaysRunning kill before GC. (Usage="

    .line 246
    .line 247
    const-string v4, "KB(x1.2) SCAN_VERSION=1) "

    .line 248
    .line 249
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_8

    .line 268
    .line 269
    :cond_8
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 270
    .line 271
    and-int/lit16 v0, v0, -0x1001

    .line 272
    .line 273
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 274
    .line 275
    goto/16 :goto_8

    .line 276
    .line 277
    :cond_9
    const/16 v2, 0x8

    .line 278
    .line 279
    if-ne v1, v2, :cond_1f

    .line 280
    .line 281
    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    .line 282
    .line 283
    long-to-int v1, v1

    .line 284
    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getAlwaysRunningSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_a

    .line 289
    .line 290
    goto/16 :goto_8

    .line 291
    .line 292
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    if-le v1, v0, :cond_b

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    .line 301
    .line 302
    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v4, "Trigger AlwaysRunning kill after GC. (Usage="

    .line 306
    .line 307
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v0, "KB SCAN_VERSION=1) "

    .line 320
    .line 321
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_8

    .line 339
    .line 340
    :cond_b
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 341
    .line 342
    and-int/lit16 v0, v0, -0x401

    .line 343
    .line 344
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 345
    .line 346
    goto/16 :goto_8

    .line 347
    .line 348
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 349
    .line 350
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 351
    .line 352
    iget-boolean v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 353
    .line 354
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 355
    .line 356
    const/16 v3, 0x8

    .line 357
    .line 358
    const-string v4, "KB Threshold="

    .line 359
    .line 360
    const-string v5, "KB SCAN_VERSION=1) "

    .line 361
    .line 362
    const/16 v6, 0x20

    .line 363
    .line 364
    const/4 v7, 0x0

    .line 365
    if-eqz v1, :cond_13

    .line 366
    .line 367
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-nez v1, :cond_13

    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    :try_start_0
    iget-object v1, v2, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 377
    .line 378
    iget-object v8, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Ljava/util/List;

    .line 385
    .line 386
    if-eqz v1, :cond_d

    .line 387
    .line 388
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    if-eqz v8, :cond_d

    .line 397
    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    check-cast v8, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 403
    .line 404
    iget-object v9, v8, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 405
    .line 406
    iget-object v10, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    if-eqz v9, :cond_c

    .line 413
    .line 414
    iget-boolean v1, v8, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .line 416
    goto :goto_4

    .line 417
    :catch_0
    :cond_d
    move v1, v7

    .line 418
    :goto_4
    if-nez v1, :cond_13

    .line 419
    .line 420
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_e

    .line 425
    .line 426
    goto/16 :goto_6

    .line 427
    .line 428
    :cond_e
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 429
    .line 430
    neg-int v8, v1

    .line 431
    and-int/2addr v8, v1

    .line 432
    if-ne v8, v6, :cond_11

    .line 433
    .line 434
    iget v8, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    .line 435
    .line 436
    iget v9, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 437
    .line 438
    if-le v8, v9, :cond_10

    .line 439
    .line 440
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_f

    .line 445
    .line 446
    const-string v1, "This HPD cannot trigger global kill. Because spec kill is already triggered."

    .line 447
    .line 448
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    goto :goto_5

    .line 452
    :cond_f
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 453
    .line 454
    or-int/lit16 v1, v1, 0x100

    .line 455
    .line 456
    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 457
    .line 458
    :goto_5
    const-string v1, "Trigger Global kill before GC. (Usage="

    .line 459
    .line 460
    invoke-static {v8, v9, v1, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto :goto_6

    .line 479
    :cond_10
    and-int/lit16 v1, v1, -0x101

    .line 480
    .line 481
    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_11
    if-ne v8, v3, :cond_13

    .line 485
    .line 486
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    .line 487
    .line 488
    iget v8, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    .line 489
    .line 490
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    if-eqz v9, :cond_12

    .line 495
    .line 496
    if-le v1, v8, :cond_12

    .line 497
    .line 498
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    .line 499
    .line 500
    .line 501
    new-instance v9, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string v10, "Trigger Global kill after GC. (Usage="

    .line 504
    .line 505
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    goto :goto_6

    .line 535
    :cond_12
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 536
    .line 537
    and-int/lit16 v1, v1, -0x401

    .line 538
    .line 539
    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 540
    .line 541
    :cond_13
    :goto_6
    iget-boolean v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 542
    .line 543
    if-eqz v0, :cond_1f

    .line 544
    .line 545
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-nez v0, :cond_1f

    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    :try_start_1
    iget-object v0, v2, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 555
    .line 556
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    check-cast v0, Ljava/util/List;

    .line 563
    .line 564
    if-eqz v0, :cond_15

    .line 565
    .line 566
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-eqz v1, :cond_15

    .line 575
    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 581
    .line 582
    iget-object v8, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 583
    .line 584
    iget-object v9, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    if-eqz v8, :cond_14

    .line 591
    .line 592
    iget-boolean v7, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    .line 594
    :catch_1
    :cond_15
    if-nez v7, :cond_1f

    .line 595
    .line 596
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-eqz v0, :cond_16

    .line 601
    .line 602
    goto/16 :goto_8

    .line 603
    .line 604
    :cond_16
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 605
    .line 606
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-nez v0, :cond_17

    .line 613
    .line 614
    goto/16 :goto_8

    .line 615
    .line 616
    :cond_17
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 617
    .line 618
    neg-int v1, v0

    .line 619
    and-int/2addr v0, v1

    .line 620
    if-ne v0, v6, :cond_1c

    .line 621
    .line 622
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    .line 623
    .line 624
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-nez v1, :cond_18

    .line 629
    .line 630
    goto/16 :goto_8

    .line 631
    .line 632
    :cond_18
    const v2, 0x7fffffff

    .line 633
    .line 634
    .line 635
    if-eq v1, v2, :cond_19

    .line 636
    .line 637
    mul-int/lit8 v1, v1, 0x6

    .line 638
    .line 639
    div-int/lit8 v1, v1, 0x5

    .line 640
    .line 641
    :cond_19
    if-le v0, v1, :cond_1b

    .line 642
    .line 643
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    if-eqz v2, :cond_1a

    .line 648
    .line 649
    const-string v2, "This HPD cannot trigger spec kill. Because global kill is already triggered."

    .line 650
    .line 651
    invoke-static {v2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    goto :goto_7

    .line 655
    :cond_1a
    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 656
    .line 657
    or-int/lit16 v2, v2, 0x200

    .line 658
    .line 659
    iput v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 660
    .line 661
    :goto_7
    const-string v2, "Trigger Spec kill before GC. (Usage="

    .line 662
    .line 663
    const-string v3, "KB(x1.2) SCAN_VERSION=1) "

    .line 664
    .line 665
    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    goto :goto_8

    .line 684
    :cond_1b
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 685
    .line 686
    and-int/lit16 v0, v0, -0x201

    .line 687
    .line 688
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 689
    .line 690
    goto :goto_8

    .line 691
    :cond_1c
    if-ne v0, v3, :cond_1f

    .line 692
    .line 693
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    .line 694
    .line 695
    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-nez v1, :cond_1d

    .line 700
    .line 701
    goto :goto_8

    .line 702
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-eqz v2, :cond_1e

    .line 707
    .line 708
    if-le v0, v1, :cond_1e

    .line 709
    .line 710
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    .line 711
    .line 712
    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    const-string v3, "Trigger Spec kill after GC. (Usage="

    .line 716
    .line 717
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    goto :goto_8

    .line 747
    :cond_1e
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 748
    .line 749
    and-int/lit16 v0, v0, -0x401

    .line 750
    .line 751
    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 752
    .line 753
    :cond_1f
    :goto_8
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0$1:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 754
    .line 755
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 761
    .line 762
    neg-int v1, v0

    .line 763
    and-int/2addr v1, v0

    .line 764
    const/16 v2, 0x20

    .line 765
    .line 766
    if-ne v1, v2, :cond_20

    .line 767
    .line 768
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    if-nez v0, :cond_21

    .line 773
    .line 774
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 775
    .line 776
    .line 777
    move-result v0

    .line 778
    if-nez v0, :cond_21

    .line 779
    .line 780
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-eqz v0, :cond_22

    .line 785
    .line 786
    goto :goto_9

    .line 787
    :cond_20
    const/16 v2, 0x8

    .line 788
    .line 789
    if-ne v1, v2, :cond_22

    .line 790
    .line 791
    const/16 v1, 0x400

    .line 792
    .line 793
    and-int/2addr v0, v1

    .line 794
    if-ne v0, v1, :cond_22

    .line 795
    .line 796
    :cond_21
    :goto_9
    const/4 p0, 0x1

    .line 797
    goto :goto_a

    .line 798
    :cond_22
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 799
    .line 800
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 801
    .line 802
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 803
    .line 804
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    const/4 p0, 0x0

    .line 808
    :goto_a
    return p0

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 27
    .line 28
    int-to-long v2, v2

    .line 29
    const-wide/32 v4, 0x36ee80

    .line 30
    .line 31
    .line 32
    mul-long/2addr v2, v4

    .line 33
    sub-long/2addr v0, v2

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 43
    .line 44
    check-cast v2, Ljava/util/LinkedList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 51
    .line 52
    iget-wide v3, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->reportTime:J

    .line 53
    .line 54
    cmp-long v3, v3, v0

    .line 55
    .line 56
    if-lez v3, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v4, "Report-protecting (%dh) is expired. "

    .line 62
    .line 63
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget v4, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 95
    .line 96
    check-cast v3, Ljava/util/LinkedList;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 110
    .line 111
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    const/4 p0, 0x1

    .line 128
    return p0

    .line 129
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 130
    return p0
.end method
