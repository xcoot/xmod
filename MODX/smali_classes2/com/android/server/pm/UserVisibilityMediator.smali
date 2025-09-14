.class public final Lcom/android/server/pm/UserVisibilityMediator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final DBG:Z

.field static final INITIAL_CURRENT_USER_ID:I


# instance fields
.field public mCurrentUserId:I

.field public final mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mStartedInvisibleProfileUserIds:Ljava/util/List;

.field public final mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

.field public final mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

.field public final mVisibleBackgroundUsersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    .line 2
    .line 3
    const-string v0, "UserVisibilityMediator"

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(ZZLandroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 13
    .line 14
    new-instance v1, Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Cannot have visibleBackgroundUserOnDefaultDisplayEnabled without visibleBackgroundUsersOnDisplaysEnabled"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    new-instance p1, Landroid/util/SparseIntArray;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 54
    .line 55
    new-instance p1, Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 66
    .line 67
    :goto_1
    sget-boolean p1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    new-instance p2, Ljava/util/ArrayList;

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 78
    .line 79
    iput-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    const-string p0, "UserVisibilityMediator"

    .line 87
    .line 88
    const-string p1, "UserVisibilityMediator created with DBG on"

    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_4
    return-void
.end method

.method public static dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "No "

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, " mappings"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "Number of "

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, " mappings: "

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-gtz p2, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ge p2, v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x3a

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 67
    .line 68
    .line 69
    const-string v1, " -> "

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 p2, p2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static isProfile(II)Z
    .locals 1

    .line 1
    const/16 v0, -0x2710

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method


# virtual methods
.method public final canAssignUserToDisplayLocked(IIII)I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    const-string v4, "UserVisibilityMediator"

    .line 6
    .line 7
    if-nez p4, :cond_4

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    .line 10
    .line 11
    if-eqz v5, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    if-ne p3, v5, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/16 v6, -0x2710

    .line 21
    .line 22
    if-eq v5, v6, :cond_0

    .line 23
    .line 24
    if-eq v5, p2, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "canAssignUserToDisplayLocked(): cannot start user %d visible on default display because user %d already did so"

    .line 39
    .line 40
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return v3

    .line 44
    :cond_0
    move v5, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v5, v2

    .line 47
    :goto_0
    if-nez v5, :cond_2

    .line 48
    .line 49
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    move v5, v1

    .line 60
    :cond_2
    if-nez v5, :cond_4

    .line 61
    .line 62
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "Ignoring mapping for default display for user %d starting as %s"

    .line 79
    .line 80
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return v0

    .line 84
    :cond_4
    if-nez p1, :cond_5

    .line 85
    .line 86
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "Cannot assign system user to secondary display (%d)"

    .line 95
    .line 96
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_5
    if-ne p4, v3, :cond_6

    .line 101
    .line 102
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p1, "Cannot assign to INVALID_DISPLAY (%d)"

    .line 111
    .line 112
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return v3

    .line 116
    :cond_6
    iget v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 117
    .line 118
    if-ne p1, v5, :cond_7

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, "Cannot assign current user (%d) to other displays"

    .line 129
    .line 130
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return v3

    .line 134
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_a

    .line 139
    .line 140
    if-eqz p4, :cond_8

    .line 141
    .line 142
    const-string p0, "Profile user can only be started in the default display"

    .line 143
    .line 144
    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    return v3

    .line 148
    :cond_8
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 149
    .line 150
    if-eqz p0, :cond_9

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string p1, "Don\'t need to map profile user %d to default display"

    .line 161
    .line 162
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    return v0

    .line 166
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 167
    .line 168
    if-nez v0, :cond_b

    .line 169
    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const-string p1, "canAssignUserToDisplayLocked(%d, %d, %d, %d) is trying to check mUsersAssignedToDisplayOnStart when it\'s not set"

    .line 191
    .line 192
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return v3

    .line 196
    :cond_b
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-ge v2, p2, :cond_f

    .line 203
    .line 204
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 205
    .line 206
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 211
    .line 212
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 217
    .line 218
    if-eqz v0, :cond_c

    .line 219
    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v5, "%d: assignedUserId=%d, assignedDisplayId=%d"

    .line 237
    .line 238
    invoke-static {v4, v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_c
    if-ne p4, p3, :cond_d

    .line 242
    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    const-string p1, "Cannot assign user %d to display %d because such display is already assigned to user %d"

    .line 260
    .line 261
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    return v3

    .line 265
    :cond_d
    if-ne p1, p2, :cond_e

    .line 266
    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    const-string p1, "Cannot assign user %d to display %d because such user is as already assigned to display %d"

    .line 284
    .line 285
    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    return v3

    .line 289
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_f
    return v1
.end method

.method public final dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, p2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 4
    const-string v2, "dispatchVisibilityChanged(): visibleUsersBefore=%s, visibleUsersAfter=%s, %d listeners (%s)"

    const-string v3, "UserVisibilityMediator"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 7
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 8
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 10
    invoke-virtual {p2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 11
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    .line 12
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V
    .locals 3

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x758b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 14
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 16
    const-string v0, "UserVisibilityMediator"

    const-string v1, "dispatchVisibilityChanged(%d -> %b): sending to %d listeners"

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    .line 19
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "UserVisibilityMediator"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3
    const-string v0, "DBG: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "Current user id: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 8
    const-string v1, "Visible users: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "started visible user / profile group"

    const-string/jumbo v3, "u"

    const-string/jumbo v4, "pg"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 12
    const-string v1, "Profiles started invisible: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    const-string v1, "Supports visible background users on displays: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 16
    const-string v1, "Supports visible background users on default display: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 18
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "user / display"

    const-string/jumbo v3, "u"

    const-string v4, "d"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const-string v2, "extra display / user"

    const-string v3, "d"

    const-string/jumbo v4, "u"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 21
    const-string v2, "Number of listeners: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    if-lez v1, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 24
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 25
    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 28
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 30
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 31
    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    .line 32
    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 33
    :cond_0
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final getMainDisplayAssignedToUser(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/16 v0, -0x2710

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "UserVisibilityMediator"

    .line 30
    .line 31
    const-string v2, "getMainDisplayAssignedToUser(%d): returning INVALID_DISPLAY for current user user %d was started on DEFAULT_DISPLAY"

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return v1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_1
    return v2

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return v1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v0

    .line 61
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 62
    .line 63
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    monitor-exit v0

    .line 68
    return p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    throw p0
.end method

.method public final getUserAssignedToDisplay(IZ)I
    .locals 6

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, -0x2710

    .line 34
    .line 35
    if-ge v1, v2, :cond_6

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v2, p1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 53
    .line 54
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return v2

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    sget-boolean v3, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 69
    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    const-string v3, "UserVisibilityMediator"

    .line 73
    .line 74
    const-string v4, "getUserAssignedToDisplay(%d): skipping user %d because it\'s a profile"

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    if-nez p2, :cond_8

    .line 96
    .line 97
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 98
    .line 99
    if-eqz p0, :cond_7

    .line 100
    .line 101
    const-string p0, "UserVisibilityMediator"

    .line 102
    .line 103
    const-string p2, "getUserAssignedToDisplay(%d): no user assigned to display, returning USER_NULL instead"

    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_7
    return v3

    .line 117
    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter p2

    .line 120
    :try_start_2
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 121
    .line 122
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    sget-boolean p2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 124
    .line 125
    if-eqz p2, :cond_9

    .line 126
    .line 127
    const-string p2, "UserVisibilityMediator"

    .line 128
    .line 129
    const-string v0, "getUserAssignedToDisplay(%d): no user assigned to display, returning current user (%d) instead"

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_9
    return p0

    .line 147
    :catchall_2
    move-exception p0

    .line 148
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    throw p0

    .line 150
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    throw p0
.end method

.method public final getUserVisibilityOnStartLocked(IIII)I
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "UserVisibilityMediator"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne p3, v2, :cond_0

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "cannot start user (%d) as BACKGROUND_USER on secondary display (%d) (it should be BACKGROUND_USER_VISIBLE"

    .line 22
    .line 23
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x3

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne p3, v4, :cond_1

    .line 31
    .line 32
    move v6, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v6, v3

    .line 35
    :goto_0
    if-nez p4, :cond_4

    .line 36
    .line 37
    if-eqz v6, :cond_4

    .line 38
    .line 39
    iget-boolean v7, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    .line 40
    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    const/16 v8, -0x2710

    .line 44
    .line 45
    if-eq p1, v8, :cond_3

    .line 46
    .line 47
    iget v9, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 48
    .line 49
    if-ne v9, v8, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    if-ne v9, p1, :cond_3

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string/jumbo p1, "trying to start current user (%d) visible in background on default display"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v4

    .line 69
    :cond_3
    :goto_1
    if-nez v7, :cond_4

    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_4

    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "cannot start full user (%d) visible on default display"

    .line 86
    .line 87
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_4
    if-ne p3, v5, :cond_5

    .line 92
    .line 93
    move v7, v5

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move v7, v3

    .line 96
    :goto_2
    if-eqz p4, :cond_7

    .line 97
    .line 98
    if-eqz v7, :cond_6

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start foreground user on secondary display"

    .line 121
    .line 122
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return v0

    .line 126
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    .line 127
    .line 128
    if-nez v8, :cond_7

    .line 129
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string p1, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: called on device that doesn\'t support multiple users on multiple displays"

    .line 151
    .line 152
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return v0

    .line 156
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_e

    .line 161
    .line 162
    if-eqz p4, :cond_8

    .line 163
    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string p1, "canStartUserLocked(%d, %d, %s, %d) failed: cannot start profile user on secondary display"

    .line 185
    .line 186
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return v0

    .line 190
    :cond_8
    if-eq p3, v5, :cond_d

    .line 191
    .line 192
    if-eq p3, v2, :cond_c

    .line 193
    .line 194
    if-eq p3, v4, :cond_9

    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_9
    if-ne p2, v0, :cond_a

    .line 199
    .line 200
    move p0, v5

    .line 201
    goto :goto_3

    .line 202
    :cond_a
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    :goto_3
    if-nez p0, :cond_b

    .line 207
    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    const-string p1, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start profile user visible when its parent is not visible in that display"

    .line 229
    .line 230
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    return v0

    .line 234
    :cond_b
    return v5

    .line 235
    :cond_c
    return v2

    .line 236
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    const-string/jumbo p1, "startUser(%d, %d, %s, %d) failed: cannot start profile user in foreground"

    .line 257
    .line 258
    .line 259
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    return v0

    .line 263
    :cond_e
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 264
    .line 265
    if-eqz p2, :cond_12

    .line 266
    .line 267
    if-nez p2, :cond_f

    .line 268
    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object p3

    .line 277
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    const-string p3, "isUserAssignedToDisplayOnStartLocked(%d, %d): called when mUsersAssignedToDisplayOnStart is null"

    .line 282
    .line 283
    invoke-static {v1, p3, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_f
    if-eq p4, v0, :cond_10

    .line 288
    .line 289
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    if-ne p2, p4, :cond_10

    .line 294
    .line 295
    move v3, v5

    .line 296
    :cond_10
    :goto_4
    if-eqz v3, :cond_12

    .line 297
    .line 298
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 299
    .line 300
    if-eqz p0, :cond_11

    .line 301
    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    const-string p1, "full user %d is already visible on display %d"

    .line 315
    .line 316
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_11
    return v4

    .line 320
    :cond_12
    :goto_5
    if-nez v7, :cond_13

    .line 321
    .line 322
    if-nez p4, :cond_13

    .line 323
    .line 324
    if-eqz v6, :cond_14

    .line 325
    .line 326
    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    .line 327
    .line 328
    if-eqz p0, :cond_14

    .line 329
    .line 330
    :cond_13
    move v2, v5

    .line 331
    :cond_14
    return v2
.end method

.method public final getVisibleUsers()Landroid/util/IntArray;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/IntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v1

    .line 40
    return-object v0

    .line 41
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, -0x2710

    .line 6
    .line 7
    if-eq p1, v2, :cond_4

    .line 8
    .line 9
    :try_start_0
    iget v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 10
    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x1

    .line 15
    if-ne v3, p1, :cond_1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return v4

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 28
    .line 29
    if-eq p1, p0, :cond_2

    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    if-ne p1, p0, :cond_3

    .line 33
    .line 34
    :cond_2
    move v1, v4

    .line 35
    :cond_3
    monitor-exit v0

    .line 36
    return v1

    .line 37
    :cond_4
    :goto_0
    monitor-exit v0

    .line 38
    return v1

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final isUserVisible(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v5, -0x2710

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-static {p1, v4}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 9
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_1
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 13
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final isUserVisible(II)Z
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_2

    :cond_1
    return v3

    .line 15
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_4

    .line 16
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    .line 17
    const-string p0, "UserVisibilityMediator"

    const-string v0, "isUserVisible(%d, %d): returning false as device does not support visible background users"

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 19
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 20
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 23
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    invoke-static {p1, v5}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    iget-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, p2, :cond_5

    goto :goto_0

    .line 26
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v5, :cond_6

    move v1, v3

    :cond_6
    move v3, v1

    .line 27
    :goto_0
    monitor-exit v2

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 28
    :cond_7
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_8

    goto :goto_1

    .line 29
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_9

    move v1, v3

    :cond_9
    move v3, v1

    .line 30
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    :catchall_1
    move-exception p0

    .line 31
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 32
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final unassignUserFromAllDisplaysOnStopLocked(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 2
    .line 3
    const-string v1, "UserVisibilityMediator"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Removing %d from mStartedVisibleProfileGroupIds (%s)"

    .line 18
    .line 19
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "Removing %d from list of invisible profiles"

    .line 40
    .line 41
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 65
    .line 66
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "Removing user %d from mUsersOnDisplaysMap (%s)"

    .line 71
    .line 72
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/lit8 v0, v0, -0x1

    .line 87
    .line 88
    :goto_0
    if-ltz v0, :cond_6

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-ne v2, p1, :cond_5

    .line 97
    .line 98
    sget-boolean v2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 99
    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 113
    .line 114
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "Removing display %d from mExtraDisplaysAssignedToUsers (%s)"

    .line 119
    .line 120
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 126
    .line 127
    .line 128
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    return-void
.end method
