.class public final Lcom/android/server/wm/PersonaActivityHelper$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "token.toString()  "

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "PersonaActivityHelper"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "mLastResumedSFActivity getPackageName  "

    .line 46
    .line 47
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "mLastResumedSFActivity getShortClassName  "

    .line 75
    .line 76
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_1

    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 148
    .line 149
    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    if-eqz v0, :cond_1

    .line 154
    .line 155
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    if-eqz p1, :cond_1

    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_1

    .line 178
    .line 179
    iget-boolean p1, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 180
    .line 181
    if-nez p1, :cond_1

    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 184
    .line 185
    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    :goto_0
    return-void
.end method
