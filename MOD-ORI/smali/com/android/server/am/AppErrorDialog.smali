.class public final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Lcom/android/server/am/AppErrorDialog$1;

.field public final mIsRestartable:Z

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public final mResult:Lcom/android/server/am/AppErrorResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/am/AppErrorDialog$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 18
    .line 19
    iget-object p2, p3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 22
    .line 23
    iget-object v2, p3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 26
    .line 27
    iget v2, p3, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    iget-boolean v2, p3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string/jumbo v3, "show_restart_in_crash_dialog"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    move v4, v5

    .line 52
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 53
    .line 54
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/android/server/am/PackageList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v3, v5, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-boolean p3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 79
    .line 80
    if-eqz p3, :cond_2

    .line 81
    .line 82
    const p3, 0x10401a5

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const p3, 0x10401a4

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 98
    .line 99
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 118
    .line 119
    iget-boolean p3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 120
    .line 121
    if-eqz p3, :cond_4

    .line 122
    .line 123
    const p3, 0x10401aa

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const p3, 0x10401a9

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x7

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v1, "Application Error: "

    .line 171
    .line 172
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 176
    .line 177
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 190
    .line 191
    or-int/lit16 p3, p3, 0x110

    .line 192
    .line 193
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    invoke-virtual {p3, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    iget-boolean p1, p2, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 203
    .line 204
    if-eqz p1, :cond_5

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const/16 p3, 0x7da

    .line 211
    .line 212
    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    .line 213
    .line 214
    .line 215
    :cond_5
    const/4 p1, 0x6

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-wide/32 v1, 0x493e0

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_6

    .line 231
    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string p3, "Showing crash dialog for package "

    .line 235
    .line 236
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object p3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 240
    .line 241
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string p3, " u"

    .line 247
    .line 248
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget p2, p2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 252
    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    const-string p2, "AppErrorDialog"

    .line 261
    .line 262
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    new-instance p1, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda0;

    .line 266
    .line 267
    invoke-direct {p1, p0}, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 271
    .line 272
    .line 273
    new-instance p1, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda1;

    .line 274
    .line 275
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 279
    .line 280
    .line 281
    :cond_6
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 54
    .line 55
    const/16 p1, 0x8

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x10201d9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x102002b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x1090040

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    move p1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p1, v1

    .line 40
    :goto_0
    const v2, 0x10201dd

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v4, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 53
    .line 54
    const/16 v5, 0x8

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    move v4, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v4, v5

    .line 61
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const v2, 0x10201dc

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    move p1, v1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move p1, v5

    .line 81
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    const-string/jumbo p1, "restriction_policy"

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 98
    .line 99
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 100
    .line 101
    invoke-interface {p1, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :catch_0
    :cond_3
    const p1, 0x10201da

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    const p1, 0x10201d9

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string/jumbo v4, "device_provisioned"

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_4

    .line 146
    .line 147
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_4
    sget-boolean p1, Landroid/os/Build;->IS_USER:Z

    .line 151
    .line 152
    if-nez p1, :cond_5

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string/jumbo v2, "development_settings_enabled"

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string/jumbo v0, "show_mute_in_crash_dialog"

    .line 172
    .line 173
    .line 174
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_5
    move v3, v1

    .line 182
    :goto_3
    const p1, 0x10201db

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    if-eqz v3, :cond_6

    .line 195
    .line 196
    move v5, v1

    .line 197
    :cond_6
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    const p1, 0x10202a5

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final setResult(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    iput-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Lcom/android/server/am/AppErrorDialog$1;

    .line 36
    .line 37
    const/4 p1, 0x6

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method
