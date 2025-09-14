.class public final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field public final mHandler:Lcom/android/server/am/AppNotRespondingDialog$1;

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Lcom/android/server/am/AppNotRespondingDialog$1;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    iget-object p1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 15
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 17
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 27
    iget-object v1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 44
    invoke-virtual {v3}, Lcom/android/server/am/PackageList;->size()I

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    if-ne v3, v4, :cond_2

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    move-result-object p2

    .line 55
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 57
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_2

    .line 63
    if-eqz v1, :cond_1

    .line 65
    const p2, 0x10401c4

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 71
    const v1, 0x10401c6

    .line 74
    move-object v5, v2

    .line 75
    move-object v2, p2

    .line 76
    move p2, v1

    .line 77
    move-object v1, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-eqz v1, :cond_3

    .line 81
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 83
    const p2, 0x10401c5

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 89
    const p2, 0x10401c7

    .line 92
    :goto_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 95
    move-result-object v3

    .line 96
    if-eqz v2, :cond_4

    .line 98
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v3, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    :goto_2
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    iget-boolean p2, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    .line 144
    if-eqz p2, :cond_5

    .line 146
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 149
    move-result-object p2

    .line 150
    const/16 p3, 0x7da

    .line 152
    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 155
    :cond_5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 162
    move-result-object p2

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    .line 165
    const-string v0, "Application Not Responding: "

    .line 167
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 172
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 174
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    const/16 p1, 0x110

    .line 186
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 188
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_6

    .line 201
    new-instance p1, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;

    .line 203
    invoke-direct {p1, p0}, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    .line 206
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 209
    new-instance p1, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda1;

    .line 211
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 217
    :cond_6
    return-void
.end method


# virtual methods
.method public final closeDialog()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Lcom/android/server/am/AppNotRespondingDialog$1;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x10201da

    .line 8
    if-eq p1, v0, :cond_2

    .line 10
    const v0, 0x10201dc

    .line 13
    if-eq p1, v0, :cond_1

    .line 15
    const v0, 0x10201de

    .line 18
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Lcom/android/server/am/AppNotRespondingDialog$1;

    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Lcom/android/server/am/AppNotRespondingDialog$1;

    .line 34
    const/4 p1, 0x3

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Lcom/android/server/am/AppNotRespondingDialog$1;

    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x102002b

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object v0

    .line 21
    const v1, 0x109003f

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    const p1, 0x10201dc

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 42
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 44
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 46
    const/16 v1, 0x8

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v0, v1

    .line 54
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    .line 60
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 72
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 74
    invoke-interface {v0, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :cond_1
    const p1, 0x10201da

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const p1, 0x10201de

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const p1, 0x10202a5

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method
