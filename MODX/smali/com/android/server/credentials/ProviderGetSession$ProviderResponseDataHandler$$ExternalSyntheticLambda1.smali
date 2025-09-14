.class public final synthetic Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Landroid/service/credentials/Action;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 16
    move-result-object v6

    .line 17
    new-instance v7, Landroid/credentials/selection/AuthenticationEntry;

    .line 19
    invoke-virtual {p1}, Landroid/service/credentials/Action;->getSlice()Landroid/app/slice/Slice;

    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v5, Landroid/content/Intent;

    .line 30
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 33
    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 35
    check-cast v0, Landroid/os/Parcelable;

    .line 37
    const-string v1, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_REQUEST"

    .line 39
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    const-string v1, "authentication_action_key"

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v0, v7

    .line 46
    move-object v2, v6

    .line 47
    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/AuthenticationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V

    .line 50
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/util/Pair;

    .line 54
    invoke-direct {v0, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    check-cast p0, Ljava/util/HashMap;

    .line 59
    invoke-virtual {p0, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 63
    :pswitch_0
    check-cast p1, Landroid/service/credentials/Action;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 74
    invoke-virtual {p1}, Landroid/service/credentials/Action;->getSlice()Landroid/app/slice/Slice;

    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance v4, Landroid/content/Intent;

    .line 85
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 88
    iget-object v3, v3, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 90
    check-cast v3, Landroid/os/Parcelable;

    .line 92
    const-string v5, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_REQUEST"

    .line 94
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v3, "action_key"

    .line 99
    invoke-direct {v1, v3, v0, v2, v4}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 102
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 104
    new-instance v2, Landroid/util/Pair;

    .line 106
    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    check-cast p0, Ljava/util/HashMap;

    .line 111
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void

    .line 115
    :pswitch_1
    check-cast p1, Landroid/service/credentials/CredentialEntry;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 126
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getSlice()Landroid/app/slice/Slice;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getBeginGetCredentialOptionId()Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    new-instance v5, Landroid/content/Intent;

    .line 141
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 144
    iget-object v6, v4, Lcom/android/server/credentials/ProviderGetSession;->mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

    .line 146
    check-cast v6, Ljava/util/HashMap;

    .line 148
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Landroid/credentials/CredentialOption;

    .line 154
    if-nez v3, :cond_0

    .line 156
    const-string v3, "CredentialManager"

    .line 158
    const-string v4, "Id from Credential Entry does not resolve to a valid option"

    .line 160
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    new-instance v6, Landroid/service/credentials/GetCredentialRequest;

    .line 166
    iget-object v4, v4, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 168
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 171
    move-result-object v3

    .line 172
    invoke-direct {v6, v4, v3}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    .line 175
    const-string v3, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    .line 177
    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    move-result-object v5

    .line 181
    :goto_0
    const-string/jumbo v3, "credential_key"

    .line 184
    invoke-direct {v1, v3, v0, v2, v5}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 189
    new-instance v3, Landroid/util/Pair;

    .line 191
    invoke-direct {v3, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    check-cast v2, Ljava/util/HashMap;

    .line 196
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    .line 201
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getType()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    check-cast p0, Ljava/util/HashSet;

    .line 207
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
