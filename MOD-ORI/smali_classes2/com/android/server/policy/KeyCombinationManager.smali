.class public final Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HW_KEY_LIST_EXCEPT_POWER:[I

.field public static final KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;


# instance fields
.field public final mActiveRules:Ljava/util/ArrayList;

.field public final mDownKeyEvent:Landroid/util/SparseArray;

.field public final mDownTimes:Landroid/util/SparseLongArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mRemovePendingRules:Ljava/util/ArrayList;

.field public final mResetKeyDownEventRunnable:Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

.field public final mRules:Ljava/util/ArrayList;

.field public mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    .line 7
    .line 8
    const/16 v1, 0xbb

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x18

    .line 26
    .line 27
    const/16 v1, 0x19

    .line 28
    .line 29
    filled-new-array {v0, v1}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/policy/KeyCombinationManager;->HW_KEY_LIST_EXCEPT_POWER:[I

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;Lcom/android/server/input/InputManagerService$LocalService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseLongArray;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    .line 48
    .line 49
    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetKeyDownEventRunnable:Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public static forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 13
    .line 14
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Rule : "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " already exists."

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v5

    .line 18
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-object v7, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    const/4 v10, 0x0

    .line 33
    const-string v11, "KeyCombinationManager"

    .line 34
    .line 35
    iget-object v12, v0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    if-eqz v2, :cond_b

    .line 38
    .line 39
    if-eqz v3, :cond_b

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const-wide/16 v13, 0x0

    .line 48
    .line 49
    if-lez v2, :cond_4

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 52
    .line 53
    invoke-virtual {v2, v6}, Landroid/util/SparseLongArray;->get(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    cmp-long v2, v2, v13

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-lez v2, :cond_1

    .line 66
    .line 67
    return v5

    .line 68
    :cond_1
    if-lez v7, :cond_2

    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    const-wide/16 v15, 0x96

    .line 77
    .line 78
    add-long/2addr v2, v15

    .line 79
    cmp-long v2, v8, v2

    .line 80
    .line 81
    if-lez v2, :cond_2

    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 84
    .line 85
    new-instance v2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    .line 97
    .line 98
    return v5

    .line 99
    :cond_2
    if-nez v7, :cond_4

    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 104
    .line 105
    .line 106
    const-string v1, "There is no active rule. mDownTimes clear"

    .line 107
    .line 108
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mResetKeyDownEventRunnable:Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    .line 116
    .line 117
    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    const-wide/16 v1, 0x1388

    .line 121
    .line 122
    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    .line 124
    .line 125
    :cond_3
    return v5

    .line 126
    :cond_4
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Landroid/util/SparseLongArray;->get(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    cmp-long v2, v2, v13

    .line 133
    .line 134
    if-nez v2, :cond_a

    .line 135
    .line 136
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 137
    .line 138
    invoke-virtual {v2, v6, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 139
    .line 140
    .line 141
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 142
    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 146
    .line 147
    new-instance v3, Landroid/view/KeyEvent;

    .line 148
    .line 149
    invoke-direct {v3, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v1, v4, :cond_6

    .line 162
    .line 163
    iput-object v10, v0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 164
    .line 165
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 166
    .line 167
    new-instance v2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;

    .line 168
    .line 169
    invoke-direct {v2, v0, v6}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/KeyCombinationManager;I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_6
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 178
    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    return v4

    .line 182
    :cond_7
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;

    .line 183
    .line 184
    invoke-direct {v1, v0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    move v3, v5

    .line 194
    :goto_1
    if-ge v3, v2, :cond_9

    .line 195
    .line 196
    iget-object v6, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 203
    .line 204
    invoke-virtual {v1, v6}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_8

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 220
    .line 221
    if-eqz v1, :cond_12

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    return v4

    .line 229
    :cond_a
    return v5

    .line 230
    :cond_b
    if-nez v2, :cond_c

    .line 231
    .line 232
    if-eqz v3, :cond_c

    .line 233
    .line 234
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_12

    .line 241
    .line 242
    iget-object v1, v0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 243
    .line 244
    if-eqz v1, :cond_12

    .line 245
    .line 246
    const-string v1, "interceptKeyLocked mTriggeredRule is null"

    .line 247
    .line 248
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    iput-object v10, v0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_c
    iget-object v3, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 255
    .line 256
    invoke-virtual {v3, v6}, Landroid/util/SparseLongArray;->delete(I)V

    .line 257
    .line 258
    .line 259
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 260
    .line 261
    if-eqz v3, :cond_d

    .line 262
    .line 263
    iget-object v3, v0, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 264
    .line 265
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 266
    .line 267
    .line 268
    :cond_d
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    .line 269
    .line 270
    if-eqz v3, :cond_f

    .line 271
    .line 272
    iget-object v3, v0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    sub-int/2addr v3, v4

    .line 279
    :goto_3
    if-ltz v3, :cond_f

    .line 280
    .line 281
    iget-object v8, v0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    check-cast v8, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 288
    .line 289
    invoke-virtual {v8, v6}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    if-eqz v9, :cond_e

    .line 294
    .line 295
    new-instance v9, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    .line 296
    .line 297
    const/4 v10, 0x0

    .line 298
    invoke-direct {v9, v8, v1, v2, v10}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    .line 303
    .line 304
    :cond_e
    iget-object v8, v0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    add-int/lit8 v3, v3, -0x1

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_f
    sub-int/2addr v7, v4

    .line 313
    :goto_4
    if-ltz v7, :cond_12

    .line 314
    .line 315
    iget-object v3, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 322
    .line 323
    invoke-virtual {v3, v6}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_11

    .line 328
    .line 329
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    .line 330
    .line 331
    if-eqz v4, :cond_10

    .line 332
    .line 333
    new-instance v4, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    .line 334
    .line 335
    const/4 v8, 0x1

    .line 336
    invoke-direct {v4, v3, v1, v2, v8}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v12, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    .line 341
    .line 342
    iget-object v4, v0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :cond_10
    new-instance v4, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    .line 348
    .line 349
    const/4 v8, 0x0

    .line 350
    invoke-direct {v4, v8, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v12, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    .line 355
    .line 356
    iget-object v3, v0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    :cond_11
    add-int/lit8 v7, v7, -0x1

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_12
    :goto_5
    return v5
.end method

.method public final isKeyConsumed(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    and-int/lit16 v1, v1, 0x400

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return v2

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final isPowerKeyIntercepted()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    const/16 v4, 0x1a

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 24
    .line 25
    invoke-virtual {v6, v4}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    move v1, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v2

    .line 37
    :goto_1
    if-eqz v1, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-gt v1, v5, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroid/util/SparseLongArray;->get(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    cmp-long p0, v3, v6

    .line 56
    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    :goto_2
    move v2, v5

    .line 63
    :cond_3
    monitor-exit v0

    .line 64
    return v2

    .line 65
    :cond_4
    monitor-exit v0

    .line 66
    return v2

    .line 67
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method
