.class public final synthetic Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstantAppResolver$1;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolver$1;Ljava/util/ArrayList;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstantAppResolver$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstantAppResolver$1;

    .line 4
    .line 5
    iget-object v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-wide v11, v0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iget-object v5, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    iget-object v2, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    .line 28
    .line 29
    iget-object v10, v2, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    iget-object v9, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$computer:Lcom/android/server/pm/Computer;

    .line 35
    .line 36
    iget-object v3, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$userManager:Lcom/android/server/pm/UserManagerService;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v0, v2, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 46
    .line 47
    :cond_0
    move-object v15, v0

    .line 48
    iget-object v0, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    .line 49
    .line 50
    iget-object v13, v0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 51
    .line 52
    iget-object v14, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    .line 53
    .line 54
    iget-object v2, v0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, v0, Landroid/content/pm/InstantAppRequest;->callingFeatureId:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, v0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    .line 59
    .line 60
    iget-object v5, v0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    .line 61
    .line 62
    iget v6, v0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 63
    .line 64
    iget-object v0, v0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 65
    .line 66
    iget-object v7, v0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 67
    .line 68
    iget-object v0, v0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 69
    .line 70
    iget-object v8, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 71
    .line 72
    const/16 v23, 0x0

    .line 73
    .line 74
    move-object/from16 v16, v2

    .line 75
    .line 76
    move-object/from16 v17, v3

    .line 77
    .line 78
    move-object/from16 v18, v4

    .line 79
    .line 80
    move-object/from16 v19, v5

    .line 81
    .line 82
    move/from16 v20, v6

    .line 83
    .line 84
    move-object/from16 v21, v7

    .line 85
    .line 86
    move-object/from16 v22, v8

    .line 87
    .line 88
    move-object/from16 v24, v0

    .line 89
    .line 90
    invoke-static/range {v13 .. v24}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v2, Landroid/content/ComponentName;

    .line 95
    .line 96
    iget-object v3, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    .line 97
    .line 98
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    iget-object v2, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    .line 109
    .line 110
    iget-object v2, v2, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 111
    .line 112
    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 113
    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const/4 v2, 0x1

    .line 119
    :goto_0
    const/16 v3, 0x384

    .line 120
    .line 121
    iget-object v4, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v3, v2, v11, v12, v4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IIJLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
