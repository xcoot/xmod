.class public final Lcom/android/server/autofill/Session$4;
.super Landroid/os/ResultReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final synthetic this$0:Lcom/android/server/autofill/Session;

.field public final synthetic val$requestId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/server/autofill/Session$4;->val$requestId:I

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AutofillSession"

    .line 3
    .line 4
    if-nez p1, :cond_3

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "onReceiveResult from Credential Manager bottom sheet with mCurrentViewId: "

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 27
    .line 28
    const-class v1, Landroid/credentials/GetCredentialResponse;

    .line 29
    .line 30
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/credentials/GetCredentialResponse;

    .line 35
    .line 36
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanDevIntegration()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 45
    .line 46
    invoke-virtual {p2, v0, p1, p0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    :goto_0
    move-object v4, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/credentials/Credential;->getData()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p2, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    .line 72
    .line 73
    const-class v0, Landroid/service/autofill/Dataset;

    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    move-object v0, p1

    .line 80
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_1
    if-eqz v4, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    .line 86
    .line 87
    iget v2, p0, Lcom/android/server/autofill/Session$4;->val$requestId:I

    .line 88
    .line 89
    const/4 v6, 0x4

    .line 90
    const/4 v3, -0x1

    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v2, -0x1

    .line 97
    if-ne p1, v2, :cond_4

    .line 98
    .line 99
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    array-length p2, p1

    .line 108
    const/4 v2, 0x2

    .line 109
    if-lt p2, v2, :cond_5

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    aget-object p2, p1, p2

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    aget-object p1, p1, v2

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v3, "Credman bottom sheet from pinned entry failed with: + "

    .line 120
    .line 121
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, " , "

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    .line 143
    .line 144
    new-instance v2, Landroid/credentials/GetCredentialException;

    .line 145
    .line 146
    invoke-direct {v2, p2, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 150
    .line 151
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string p0, "Unknown resultCode from credential manager bottom sheet: "

    .line 156
    .line 157
    invoke-static {p1, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    :goto_2
    return-void
.end method
