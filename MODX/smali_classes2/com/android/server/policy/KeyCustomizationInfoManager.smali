.class public final Lcom/android/server/policy/KeyCustomizationInfoManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALL_HOT_KEYCODE:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDoubleMap:Landroid/util/SparseArray;

.field public final mDownUpMap:Landroid/util/SparseArray;

.field public mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

.field public mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

.field public final mHotKeyMap:Landroid/util/SparseArray;

.field public final mLastDoubleInfo:Landroid/util/SparseArray;

.field public final mLastDownUpInfo:Landroid/util/SparseArray;

.field public final mLastLongInfo:Landroid/util/SparseArray;

.field public final mLastQuadrupleInfo:Landroid/util/SparseArray;

.field public final mLastQuintupleInfo:Landroid/util/SparseArray;

.field public final mLastTripleInfo:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mLongMap:Landroid/util/SparseArray;

.field public final mOwnerPackageList:Ljava/util/ArrayList;

.field public final mQuadrupleMap:Landroid/util/SparseArray;

.field public final mQuintupleMap:Landroid/util/SparseArray;

.field public final mTripleMap:Landroid/util/SparseArray;

.field public mUserId:I

.field public final mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x443

    .line 2
    .line 3
    const/16 v1, 0x444

    .line 4
    .line 5
    const/16 v2, 0x442

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDownUpMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLongMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDoubleMap:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mTripleMap:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuadrupleMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuintupleMap:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDownUpInfo:Landroid/util/SparseArray;

    .line 52
    .line 53
    new-instance v0, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastLongInfo:Landroid/util/SparseArray;

    .line 59
    .line 60
    new-instance v0, Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDoubleInfo:Landroid/util/SparseArray;

    .line 66
    .line 67
    new-instance v0, Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastTripleInfo:Landroid/util/SparseArray;

    .line 73
    .line 74
    new-instance v0, Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuadrupleInfo:Landroid/util/SparseArray;

    .line 80
    .line 81
    new-instance v0, Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuintupleInfo:Landroid/util/SparseArray;

    .line 87
    .line 88
    new-instance v0, Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/Object;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 113
    .line 114
    new-instance p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;-><init>(Lcom/android/server/policy/KeyCustomizationInfoManager;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 120
    .line 121
    return-void
.end method

.method public static dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    const-string v2, "    "

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "      "

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, ", keyCode: "

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 45
    .line 46
    .line 47
    const-string v3, ", "

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 53
    .line 54
    invoke-static {v4}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 62
    .line 63
    const/4 v5, -0x1

    .line 64
    if-ne v4, v5, :cond_1

    .line 65
    .line 66
    const-string v5, ", dispatching: "

    .line 67
    .line 68
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 75
    .line 76
    const/4 v5, -0x2

    .line 77
    if-eq v4, v5, :cond_2

    .line 78
    .line 79
    const-string v5, ", userId: "

    .line 80
    .line 81
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-wide v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 88
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    cmp-long v8, v4, v6

    .line 92
    .line 93
    if-eqz v8, :cond_3

    .line 94
    .line 95
    const-string v8, ", longPressTimeout: "

    .line 96
    .line 97
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-wide v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 104
    .line 105
    cmp-long v6, v4, v6

    .line 106
    .line 107
    if-eqz v6, :cond_4

    .line 108
    .line 109
    const-string v6, ", multiPressTimeout: "

    .line 110
    .line 111
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    const-string v6, "        "

    .line 124
    .line 125
    if-nez v5, :cond_5

    .line 126
    .line 127
    const-string v5, ", ownerPackage: "

    .line 128
    .line 129
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 142
    .line 143
    if-eqz v4, :cond_7

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    const-string v4, ", showOnKeyguard: "

    .line 152
    .line 153
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    const-string/jumbo v5, "show_on_keyguard"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    const-string v1, ", intent is null."

    .line 188
    .line 189
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_8
    return-void
.end method

.method public static getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 9

    .line 1
    const/16 v0, 0x3f7

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x437

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    .line 16
    .line 17
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    move-object v8, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x20

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-object v8, v2

    .line 39
    :goto_1
    if-nez v8, :cond_3

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_3
    new-instance p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    const/4 v4, 0x3

    .line 46
    const/16 v5, 0x3b7

    .line 47
    .line 48
    move-object v3, p1

    .line 49
    move v6, p0

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method public static getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    const-string/jumbo v1, "torch/torch"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    const-string v1, "home/home"

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    const-string v1, "back/back"

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 p2, 0x1

    .line 52
    :goto_0
    move v5, p2

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    new-instance v6, Landroid/content/Intent;

    .line 57
    .line 58
    const-string p2, "android.intent.action.MAIN"

    .line 59
    .line 60
    invoke-direct {v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "android.intent.category.LAUNCHER"

    .line 64
    .line 65
    invoke-virtual {v6, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const/high16 p2, 0x10200000

    .line 69
    .line 70
    invoke-virtual {v6, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    new-instance p2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 77
    .line 78
    const/16 v3, 0x44f

    .line 79
    .line 80
    move-object v1, p2

    .line 81
    move v2, p0

    .line 82
    move v4, p1

    .line 83
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    return-object p2
.end method


# virtual methods
.method public final addOwnerPackageList(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final checkHomeLongPressInfo()Z
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "KeyCustomizationInfoManager"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "There is no home key long press info."

    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    move v4, v1

    .line 30
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v4, v5, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 41
    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 46
    .line 47
    const/16 v7, 0xa

    .line 48
    .line 49
    if-eq v6, v7, :cond_2

    .line 50
    .line 51
    const/16 v7, 0x1e

    .line 52
    .line 53
    if-eq v6, v7, :cond_2

    .line 54
    .line 55
    const/16 v7, 0x32

    .line 56
    .line 57
    if-eq v6, v7, :cond_2

    .line 58
    .line 59
    const-string v7, "checkHomeLongPressInfo, id="

    .line 60
    .line 61
    const-string v8, " added"

    .line 62
    .line 63
    invoke-static {v6, v7, v8, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 67
    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_4

    .line 83
    .line 84
    const-string p0, "checkHomeLongPressInfo, toRemove size is zero"

    .line 85
    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return v1

    .line 90
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_7

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 115
    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v7, "checkHomeLongPressInfo, remove "

    .line 119
    .line 120
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    if-nez v5, :cond_5

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/16 v6, 0x7d3

    .line 148
    .line 149
    const-string v7, "Remove home key long press info, ID("

    .line 150
    .line 151
    if-ne v1, v6, :cond_6

    .line 152
    .line 153
    iget-object v1, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v4, "), ownerPackage="

    .line 167
    .line 168
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-static {v5, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, ")"

    .line 184
    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :goto_3
    const/4 v1, 0x1

    .line 196
    goto :goto_2

    .line 197
    :cond_7
    return v1
.end method

.method public final get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/util/SparseArray;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    move-object p0, p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 24
    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object p2

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 p3, 0x7d3

    .line 32
    .line 33
    if-ne p1, p3, :cond_3

    .line 34
    .line 35
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    :cond_2
    monitor-exit v0

    .line 50
    return-object p2

    .line 51
    :cond_3
    monitor-exit v0

    .line 52
    return-object p0

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final getInfoMapLocked(I)Landroid/util/SparseArray;
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDownUpMap:Landroid/util/SparseArray;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    and-int/lit8 v0, p1, 0x4

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLongMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    and-int/lit8 v0, p1, 0x8

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDoubleMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    and-int/lit8 v0, p1, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mTripleMap:Landroid/util/SparseArray;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    and-int/lit8 v0, p1, 0x20

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuadrupleMap:Landroid/util/SparseArray;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    and-int/lit8 v0, p1, 0x40

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuintupleMap:Landroid/util/SparseArray;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "Can not find infoMap. which="

    .line 46
    .line 47
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getLastInfoLocked(I)Landroid/util/SparseArray;
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDownUpInfo:Landroid/util/SparseArray;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    and-int/lit8 v0, p1, 0x4

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastLongInfo:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    and-int/lit8 v0, p1, 0x8

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDoubleInfo:Landroid/util/SparseArray;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    and-int/lit8 v0, p1, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastTripleInfo:Landroid/util/SparseArray;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    and-int/lit8 v0, p1, 0x20

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuadrupleInfo:Landroid/util/SparseArray;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    and-int/lit8 v0, p1, 0x40

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuintupleInfo:Landroid/util/SparseArray;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "Can not find lastInfo. which="

    .line 46
    .line 47
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "double_tab_launch"

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-string v0, "getQuickLaunchCameraInfoFromSetting behavior="

    .line 15
    .line 16
    const-string v2, "KeyCustomizationInfoManager"

    .line 17
    .line 18
    invoke-static {p0, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eq p0, v1, :cond_1

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    const/16 v2, 0x7d1

    .line 32
    .line 33
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIII)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "function_key_config_doublepress"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    const-string v3, "function_key_config_doublepress_type"

    .line 24
    .line 25
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "function_key_config_doublepress_value"

    .line 30
    .line 31
    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v3, "getSideKeyDoubleInfoFromGlobalSetting enabled="

    .line 36
    .line 37
    const-string v4, " type="

    .line 38
    .line 39
    const-string v5, " appInfo="

    .line 40
    .line 41
    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v3, "KeyCustomizationInfoManager"

    .line 46
    .line 47
    invoke-static {v1, p0, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    if-eq v2, v1, :cond_4

    .line 54
    .line 55
    const/4 p0, 0x3

    .line 56
    if-eq v2, p0, :cond_3

    .line 57
    .line 58
    const/4 p0, 0x4

    .line 59
    if-eq v2, p0, :cond_2

    .line 60
    .line 61
    const-string p0, "SideKeyDoublePress"

    .line 62
    .line 63
    const-string/jumbo v1, "type is not properly."

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-object p0, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const-string/jumbo p0, "samsungpay://simplepay/sidekey"

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string/jumbo p0, "secureFolder/secureFolder"

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const-string p0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 93
    .line 94
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_1
    if-nez p0, :cond_6

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_6
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getAction()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getIntent()Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const/16 v3, 0x450

    .line 112
    .line 113
    const/16 v4, 0x1a

    .line 114
    .line 115
    const/16 v2, 0x8

    .line 116
    .line 117
    move-object v1, v0

    .line 118
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public final getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v3, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v1

    .line 16
    :goto_0
    const-string v4, "function_key_config_longpress_type"

    .line 17
    .line 18
    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const-string v3, "getSideKeyLongInfoFromGlobalSetting sideKeyLongPressType="

    .line 23
    .line 24
    const-string v4, "KeyCustomizationInfoManager"

    .line 25
    .line 26
    invoke-static {p0, v3, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-ne p0, v2, :cond_1

    .line 34
    .line 35
    const-string p0, "aiAgentApp/aiAgentApp"

    .line 36
    .line 37
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    move v9, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    if-nez p0, :cond_2

    .line 44
    .line 45
    const-string/jumbo p0, "wakeBixby/wakeBixby"

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v0, 0x1

    .line 54
    if-ne p0, v0, :cond_3

    .line 55
    .line 56
    const-string p0, "globalAction/globalAction"

    .line 57
    .line 58
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move v9, v1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v9, v1

    .line 65
    move-object p0, v4

    .line 66
    :goto_2
    if-nez p0, :cond_4

    .line 67
    .line 68
    return-object v4

    .line 69
    :cond_4
    new-instance v10, Landroid/content/Intent;

    .line 70
    .line 71
    const-string v0, "android.intent.action.MAIN"

    .line 72
    .line 73
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 80
    .line 81
    const/16 v7, 0x450

    .line 82
    .line 83
    const/16 v8, 0x1a

    .line 84
    .line 85
    const/4 v6, 0x4

    .line 86
    move-object v5, p0

    .line 87
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 88
    .line 89
    .line 90
    return-object p0
.end method

.method public final getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v2, 0x437

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0x3f7

    .line 13
    .line 14
    if-ne p1, v4, :cond_0

    .line 15
    .line 16
    const-string v5, "dedicated_app_xcover_switch"

    .line 17
    .line 18
    const-string v6, "dedicated_app_xcover"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ne p1, v2, :cond_b

    .line 22
    .line 23
    const-string v5, "dedicated_app_top_switch"

    .line 24
    .line 25
    const-string v6, "dedicated_app_top"

    .line 26
    .line 27
    :goto_0
    const/4 v7, -0x2

    .line 28
    invoke-static {p0, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ne v5, v0, :cond_b

    .line 33
    .line 34
    invoke-static {p0, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/4 v5, -0x1

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sparse-switch v6, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    :goto_1
    move v0, v5

    .line 57
    goto :goto_2

    .line 58
    :sswitch_0
    const-string v0, "com.verizon.pushtotalkplus"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v0, 0x4

    .line 68
    goto :goto_2

    .line 69
    :sswitch_1
    const-string v0, "com.att.eptt"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x3

    .line 79
    goto :goto_2

    .line 80
    :sswitch_2
    const-string v0, "com.att.firstnet.grey"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const/4 v0, 0x2

    .line 90
    goto :goto_2

    .line 91
    :sswitch_3
    const-string v1, "com.sprint.sdcplus"

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :sswitch_4
    const-string v0, "com.bell.ptt"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move v0, v1

    .line 110
    :cond_6
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 111
    .line 112
    .line 113
    new-instance v10, Landroid/content/Intent;

    .line 114
    .line 115
    const-string v0, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    .line 116
    .line 117
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/high16 v0, 0x1000000

    .line 121
    .line 122
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    const-string v0, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 126
    .line 127
    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_7

    .line 135
    .line 136
    invoke-virtual {v10, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    :cond_7
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 140
    .line 141
    const/4 v6, 0x3

    .line 142
    const/16 v7, 0x3b7

    .line 143
    .line 144
    const/4 v9, 0x2

    .line 145
    move-object v5, p0

    .line 146
    move v8, p1

    .line 147
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_0
    if-eq p1, v4, :cond_9

    .line 152
    .line 153
    if-eq p1, v2, :cond_8

    .line 154
    .line 155
    move-object p0, v3

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    const-string p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    const-string p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    .line 161
    .line 162
    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_a
    new-instance v9, Landroid/content/Intent;

    .line 170
    .line 171
    invoke-direct {v9, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string p0, "com.att.firstnet.grey/com.samsung.android.sptt.keyevent.KeyEventService"

    .line 175
    .line 176
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {v9, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    new-instance v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 184
    .line 185
    const/4 v5, 0x3

    .line 186
    const/16 v6, 0x3b7

    .line 187
    .line 188
    const/4 v8, 0x3

    .line 189
    move-object v4, v3

    .line 190
    move v7, p1

    .line 191
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 192
    .line 193
    .line 194
    :goto_4
    return-object v3

    .line 195
    :pswitch_1
    invoke-static {p1, p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :cond_b
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_4
        -0x3dc882fb -> :sswitch_3
        -0x6041c7a -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final init(IZ)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Xml file error code was wrong. code="

    .line 3
    .line 4
    const-string v2, "loadSettings duration="

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v3

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 14
    .line 15
    invoke-virtual {v6, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->loadSettingsLocked(I)V

    .line 16
    .line 17
    .line 18
    const-string v6, "KeyCustomizationInfoManager"

    .line 19
    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    sub-long/2addr v8, v4

    .line 30
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " version="

    .line 34
    .line 35
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 39
    .line 40
    iget v2, v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 41
    .line 42
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " userId="

    .line 46
    .line 47
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, " userSwitching="

    .line 54
    .line 55
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 75
    .line 76
    sget-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 77
    .line 78
    const v7, 0x40833333    # 4.1f

    .line 79
    .line 80
    .line 81
    if-ne v2, v6, :cond_5

    .line 82
    .line 83
    const/16 v1, 0x1a

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 88
    .line 89
    .line 90
    const/4 v6, 0x4

    .line 91
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 92
    .line 93
    .line 94
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 95
    .line 96
    const/16 v8, 0x3b7

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x3

    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    const/16 v1, 0x3f7

    .line 103
    .line 104
    invoke-virtual {p0, v10, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v8, v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    if-eqz v11, :cond_0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    const/16 v1, 0x437

    .line 122
    .line 123
    invoke-virtual {p0, v10, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v8, v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    if-eqz v8, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY:Z

    .line 137
    .line 138
    if-nez v1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p0, v2, v10, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto/16 :goto_8

    .line 146
    .line 147
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 148
    .line 149
    iput v7, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 150
    .line 151
    if-nez p2, :cond_c

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :cond_5
    sget-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 159
    .line 160
    if-ne v2, v6, :cond_b

    .line 161
    .line 162
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 163
    .line 164
    const/4 v2, 0x0

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->checkHomeLongPressInfo()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    goto :goto_3

    .line 172
    :cond_6
    move v1, v2

    .line 173
    :goto_3
    if-nez p2, :cond_8

    .line 174
    .line 175
    iget-object p2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 176
    .line 177
    iget v6, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 178
    .line 179
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-nez v6, :cond_7

    .line 184
    .line 185
    sget-object p2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 186
    .line 187
    move p2, v2

    .line 188
    goto :goto_4

    .line 189
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string/jumbo v8, "updateXmlVersion old="

    .line 192
    .line 193
    .line 194
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget v8, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 198
    .line 199
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v8, " new=4.1"

    .line 203
    .line 204
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    const-string v8, "KeyCustomizationInfoXmlUtils"

    .line 212
    .line 213
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iput v7, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 217
    .line 218
    move p2, v0

    .line 219
    :goto_4
    or-int/2addr v1, p2

    .line 220
    :cond_8
    if-eqz v1, :cond_9

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    .line 223
    .line 224
    .line 225
    :cond_9
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 226
    .line 227
    array-length p2, p1

    .line 228
    move v1, v2

    .line 229
    :goto_5
    if-ge v1, p2, :cond_c

    .line 230
    .line 231
    aget v6, p1, v1

    .line 232
    .line 233
    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    move v8, v2

    .line 238
    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-ge v8, v9, :cond_a

    .line 243
    .line 244
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    const/4 v10, -0x1

    .line 249
    invoke-virtual {p0, v6, v9, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 250
    .line 251
    .line 252
    add-int/2addr v8, v0

    .line 253
    goto :goto_6

    .line 254
    :cond_a
    add-int/2addr v1, v0

    .line 255
    goto :goto_5

    .line 256
    :cond_b
    const-string p1, "KeyCustomizationInfoManager"

    .line 257
    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 264
    .line 265
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 266
    .line 267
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_c
    :goto_7
    const-string p0, "KeyCustomizationInfoManager"

    .line 278
    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string p2, "initKeyCustomizationInfo duration="

    .line 285
    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 290
    .line 291
    .line 292
    move-result-wide v0

    .line 293
    sub-long/2addr v0, v4

    .line 294
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    monitor-exit v3

    .line 305
    return-void

    .line 306
    :goto_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    throw p0
.end method

.method public final initKeyCustomizationInfoLocked(IIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x3

    .line 11
    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, -0x2

    .line 17
    const-string v10, "KeyCustomizationInfoManager"

    .line 18
    .line 19
    if-eq v2, v5, :cond_12

    .line 20
    .line 21
    const/16 v11, 0x1a

    .line 22
    .line 23
    if-eq v2, v11, :cond_a

    .line 24
    .line 25
    const/16 v6, 0x3f7

    .line 26
    .line 27
    if-eq v2, v6, :cond_4

    .line 28
    .line 29
    const/16 v6, 0x437

    .line 30
    .line 31
    if-eq v2, v6, :cond_0

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    and-int/lit8 v7, v1, 0x3

    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_TOP_KEY_B2B_DELTA:Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    goto/16 :goto_8

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 73
    .line 74
    if-eqz v4, :cond_19

    .line 75
    .line 76
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string/jumbo v7, "xcover_top_short_press_app"

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v7, "getTopKeyPressInfoFromSetting topKeyPressLaunchApp="

    .line 90
    .line 91
    invoke-static {v7, v4, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :cond_3
    and-int/lit8 v0, v1, 0x4

    .line 104
    .line 105
    if-eqz v0, :cond_19

    .line 106
    .line 107
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :cond_4
    and-int/lit8 v7, v1, 0x3

    .line 112
    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_TOP_KEY_B2B_DELTA:Z

    .line 116
    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :cond_5
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-eqz v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_8

    .line 147
    .line 148
    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 149
    .line 150
    if-eqz v4, :cond_19

    .line 151
    .line 152
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 153
    .line 154
    if-eqz v7, :cond_7

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_7
    if-eqz v4, :cond_8

    .line 158
    .line 159
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const-string/jumbo v7, "short_press_app"

    .line 166
    .line 167
    .line 168
    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v7, "getXCoverKeyPressInfoFromSetting xcoverKeyPressApp="

    .line 173
    .line 174
    invoke-static {v7, v4, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v5, v6, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    :cond_8
    :goto_0
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :cond_9
    and-int/lit8 v5, v1, 0x4

    .line 187
    .line 188
    if-eqz v5, :cond_19

    .line 189
    .line 190
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 191
    .line 192
    if-eqz v5, :cond_19

    .line 193
    .line 194
    iget-object v5, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    const-string v7, "long_press_app"

    .line 201
    .line 202
    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    const-string v7, "getXCoverKeyLongInfoFromSetting xcoverKeyLongPressLaunchApp="

    .line 207
    .line 208
    invoke-static {v7, v5, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v4, v6, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_a
    and-int/2addr v4, v1

    .line 221
    const-string v5, "android.intent.action.MAIN"

    .line 222
    .line 223
    if-eqz v4, :cond_d

    .line 224
    .line 225
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 226
    .line 227
    if-nez v4, :cond_c

    .line 228
    .line 229
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    .line 230
    .line 231
    if-eqz v4, :cond_b

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_b
    const-string v4, "getPowerKeyLongDefaultInfo"

    .line 235
    .line 236
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    new-instance v4, Landroid/content/Intent;

    .line 240
    .line 241
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v5, "globalAction/globalAction"

    .line 245
    .line 246
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    new-instance v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 254
    .line 255
    const/4 v12, 0x4

    .line 256
    const/16 v13, 0x3e8

    .line 257
    .line 258
    const/16 v14, 0x1a

    .line 259
    .line 260
    const/4 v15, 0x0

    .line 261
    move-object v11, v5

    .line 262
    move-object/from16 v16, v4

    .line 263
    .line 264
    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_8

    .line 271
    .line 272
    :cond_c
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_8

    .line 280
    .line 281
    :cond_d
    and-int/lit8 v4, v1, 0x8

    .line 282
    .line 283
    if-eqz v4, :cond_19

    .line 284
    .line 285
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 286
    .line 287
    if-eqz v4, :cond_10

    .line 288
    .line 289
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    const-string/jumbo v8, "tvmode_state"

    .line 296
    .line 297
    .line 298
    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-ne v8, v6, :cond_e

    .line 303
    .line 304
    move v8, v6

    .line 305
    goto :goto_2

    .line 306
    :cond_e
    move v8, v7

    .line 307
    :goto_2
    const-string/jumbo v9, "pwrkey_owner_status"

    .line 308
    .line 309
    .line 310
    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-ne v4, v6, :cond_f

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_f
    move v6, v7

    .line 318
    :goto_3
    if-eqz v8, :cond_10

    .line 319
    .line 320
    if-eqz v6, :cond_10

    .line 321
    .line 322
    const-string v4, "android.intent.category.LAUNCHER"

    .line 323
    .line 324
    invoke-static {v5, v4}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    const-string v4, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 329
    .line 330
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    new-instance v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 338
    .line 339
    const/16 v7, 0x8

    .line 340
    .line 341
    const/16 v8, 0x7d2

    .line 342
    .line 343
    const/16 v9, 0x1a

    .line 344
    .line 345
    const/4 v10, 0x1

    .line 346
    move-object v6, v4

    .line 347
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_8

    .line 354
    .line 355
    :cond_10
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 356
    .line 357
    if-eqz v4, :cond_11

    .line 358
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_8

    .line 367
    .line 368
    :cond_11
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 369
    .line 370
    if-eqz v4, :cond_19

    .line 371
    .line 372
    invoke-virtual {v0, v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_8

    .line 380
    .line 381
    :cond_12
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    const-string v11, "double_tab_launch"

    .line 388
    .line 389
    const/4 v12, 0x2

    .line 390
    invoke-static {v4, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-eq v4, v6, :cond_18

    .line 395
    .line 396
    if-nez v4, :cond_13

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_13
    and-int/lit8 v4, v1, 0x8

    .line 400
    .line 401
    if-eqz v4, :cond_19

    .line 402
    .line 403
    if-nez v3, :cond_19

    .line 404
    .line 405
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    const-string v5, "any_screen_enabled"

    .line 412
    .line 413
    invoke-static {v4, v5, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    if-ne v5, v6, :cond_14

    .line 418
    .line 419
    move v5, v6

    .line 420
    goto :goto_4

    .line 421
    :cond_14
    move v5, v7

    .line 422
    :goto_4
    const-string/jumbo v11, "one_handed_op_wakeup_type"

    .line 423
    .line 424
    .line 425
    invoke-static {v4, v11, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-ne v4, v6, :cond_15

    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_15
    move v6, v7

    .line 433
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string v7, "getOneHandModeInfoFromGlobalSetting isOneHandOpEnabled="

    .line 436
    .line 437
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v7, " isTriggeredButtonType="

    .line 444
    .line 445
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v7, " press=8"

    .line 452
    .line 453
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    if-eqz v5, :cond_17

    .line 464
    .line 465
    if-nez v6, :cond_16

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_16
    new-instance v4, Landroid/content/Intent;

    .line 469
    .line 470
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string/jumbo v5, "onehand/onehand"

    .line 474
    .line 475
    .line 476
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 481
    .line 482
    .line 483
    new-instance v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 484
    .line 485
    const/16 v12, 0x8

    .line 486
    .line 487
    const/16 v13, 0x452

    .line 488
    .line 489
    const/4 v14, 0x3

    .line 490
    const/4 v15, 0x0

    .line 491
    move-object v11, v8

    .line 492
    move-object/from16 v16, v4

    .line 493
    .line 494
    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 495
    .line 496
    .line 497
    :cond_17
    :goto_6
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 498
    .line 499
    .line 500
    goto :goto_8

    .line 501
    :cond_18
    :goto_7
    and-int/lit8 v4, v1, 0x8

    .line 502
    .line 503
    if-eqz v4, :cond_19

    .line 504
    .line 505
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 506
    .line 507
    if-eqz v4, :cond_19

    .line 508
    .line 509
    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    .line 514
    .line 515
    .line 516
    :cond_19
    :goto_8
    return-void
.end method

.method public final initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    const/4 v3, 0x0

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v4, v2, :cond_8

    .line 8
    .line 9
    aget-object v5, v1, v4

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const/16 v7, 0x80

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    .line 22
    const-string v6, ""

    .line 23
    .line 24
    :try_start_1
    const-string/jumbo v7, "persist.omc.sales_code"

    .line 25
    .line 26
    .line 27
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    const-string/jumbo v7, "ro.csc.sales_code"

    .line 38
    .line 39
    .line 40
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    const-string/jumbo v7, "ril.sales_code"

    .line 51
    .line 52
    .line 53
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :catch_0
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v7, -0x1

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    sparse-switch v8, :sswitch_data_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :sswitch_0
    const-string v8, "com.verizon.pushtotalkplus"

    .line 70
    .line 71
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v7, 0x3

    .line 79
    goto :goto_1

    .line 80
    :sswitch_1
    const-string v8, "com.att.eptt"

    .line 81
    .line 82
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v7, 0x2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_2
    const-string v8, "com.sprint.sdcplus"

    .line 92
    .line 93
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v7, v0

    .line 101
    goto :goto_1

    .line 102
    :sswitch_3
    const-string v8, "com.bell.ptt"

    .line 103
    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move v7, v3

    .line 112
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :pswitch_0
    const-string v7, "VZW"

    .line 117
    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_5

    .line 123
    .line 124
    const-string v7, "VPP"

    .line 125
    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_1
    const-string v7, "ATT"

    .line 134
    .line 135
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_5

    .line 140
    .line 141
    const-string v7, "AIO"

    .line 142
    .line 143
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_6

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_2
    const-string v7, "TMB"

    .line 151
    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_5

    .line 157
    .line 158
    const-string v7, "TMK"

    .line 159
    .line 160
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-nez v7, :cond_5

    .line 165
    .line 166
    const-string v7, "ASR"

    .line 167
    .line 168
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :pswitch_3
    const-string v7, "BMC"

    .line 176
    .line 177
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_6

    .line 182
    .line 183
    :cond_5
    :goto_2
    if-nez p1, :cond_7

    .line 184
    .line 185
    invoke-static {p2, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 190
    .line 191
    .line 192
    return v0

    .line 193
    :catch_1
    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 194
    .line 195
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 196
    .line 197
    iget v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 198
    .line 199
    const/16 v7, 0x3b7

    .line 200
    .line 201
    if-ne v6, v7, :cond_7

    .line 202
    .line 203
    iget-object v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 204
    .line 205
    if-eqz v6, :cond_7

    .line 206
    .line 207
    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_7

    .line 216
    .line 217
    const/4 v9, 0x0

    .line 218
    const/4 v11, 0x0

    .line 219
    const/16 v7, 0x3b7

    .line 220
    .line 221
    const/4 v8, 0x3

    .line 222
    move-object v6, p0

    .line 223
    move v10, p2

    .line 224
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    .line 225
    .line 226
    .line 227
    :cond_7
    add-int/2addr v4, v0

    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_8
    return v3

    .line 231
    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_3
        -0x3dc882fb -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 8
    .line 9
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 10
    .line 11
    iget v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 12
    .line 13
    iget-object v4, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Landroid/util/SparseArray;

    .line 24
    .line 25
    const/16 v7, 0x7d3

    .line 26
    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    new-instance v6, Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    const/16 v5, 0x3e8

    .line 42
    .line 43
    if-lt v2, v5, :cond_7

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-lez v8, :cond_7

    .line 50
    .line 51
    new-instance v9, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    :goto_0
    if-ge v10, v8, :cond_4

    .line 58
    .line 59
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    check-cast v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 64
    .line 65
    if-nez v11, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget v11, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 69
    .line 70
    if-lt v11, v5, :cond_3

    .line 71
    .line 72
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_7

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 107
    .line 108
    if-nez v9, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    iget-object v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-ne v8, v7, :cond_5

    .line 125
    .line 126
    invoke-virtual {p0, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    :goto_3
    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, -0x1

    .line 134
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 135
    .line 136
    .line 137
    if-nez p2, :cond_8

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 140
    .line 141
    .line 142
    :cond_8
    if-ne v2, v7, :cond_9

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_9
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw p0
.end method

.method public final remove(IILjava/lang/String;IZ)Z
    .locals 7

    .line 1
    const-string v0, "Can not remove data, There is no matched with ownerPackage="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/util/SparseArray;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return v3

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return v3

    .line 33
    :cond_1
    const/16 v5, 0x7d3

    .line 34
    .line 35
    if-ne p1, v5, :cond_2

    .line 36
    .line 37
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    iget-object v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    const-string p0, "KeyCustomizationInfoManager"

    .line 52
    .line 53
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    monitor-exit v1

    .line 61
    return v3

    .line 62
    :cond_2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 63
    .line 64
    .line 65
    if-ne p1, v5, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, p2, p4, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    const/4 p1, -0x1

    .line 74
    invoke-virtual {p0, p2, p4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 75
    .line 76
    .line 77
    if-nez p5, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 80
    .line 81
    .line 82
    :cond_4
    monitor-exit v1

    .line 83
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final removeOwnerPackageList(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_5

    .line 14
    .line 15
    aget v4, v0, v3

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    move v5, v2

    .line 22
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-ge v5, v6, :cond_4

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Landroid/util/SparseArray;

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    move v7, v2

    .line 38
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-ge v7, v8, :cond_3

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 49
    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    iget v9, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 53
    .line 54
    const/16 v10, 0x7d3

    .line 55
    .line 56
    if-ne v9, v10, :cond_2

    .line 57
    .line 58
    iget-object v8, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_2

    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final saveSettingsLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void
.end method

.method public final saveSettingsLocked(I)V
    .locals 6

    .line 2
    const-string/jumbo v0, "saveSettingsLocked, userId("

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 4
    iget v4, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    if-eq v4, v3, :cond_0

    .line 5
    const-string v4, "KeyCustomizationInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is no matched with newId("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void

    .line 9
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    throw p0
.end method

.method public final setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 25
    .line 26
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    if-eqz p4, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final updateHigherPriorityInfoLocked(III)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p3, v0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Landroid/util/SparseArray;

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    move p3, v0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    const/16 v1, 0x7d4

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v2, v4, :cond_3

    .line 27
    .line 28
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 38
    .line 39
    if-le v3, v4, :cond_2

    .line 40
    .line 41
    move v3, v4

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    if-eq v3, v1, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    move v3, v0

    .line 49
    :goto_2
    move p3, v3

    .line 50
    :cond_5
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    .line 56
    .line 57
    if-ne p3, v0, :cond_6

    .line 58
    .line 59
    return-void

    .line 60
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/util/SparseArray;

    .line 69
    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    const/4 p3, 0x0

    .line 73
    goto :goto_4

    .line 74
    :cond_7
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 79
    .line 80
    :goto_4
    if-nez p3, :cond_8

    .line 81
    .line 82
    return-void

    .line 83
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
