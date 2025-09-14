.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/app/appsearch/GenericDocument;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Setup Schema for user="

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 36
    .line 37
    iget v1, v1, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " pkg="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "ShortcutService"

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 55
    .line 56
    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    new-array v1, v1, [Landroid/app/appsearch/AppSearchSchema;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    sget-object v3, Landroid/content/pm/AppSearchShortcutPerson;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    .line 64
    .line 65
    aput-object v3, v1, v2

    .line 66
    .line 67
    sget-object v2, Landroid/content/pm/AppSearchShortcutInfo;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    aput-object v2, v1, v3

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas([Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v1, 0x5

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "Shortcut"

    .line 90
    .line 91
    invoke-virtual {v0, v3, v2}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v2, 0x6

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v0, v3, v4}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v3, "ShortcutPerson"

    .line 117
    .line 118
    invoke-virtual {v0, v3, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v3, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 135
    .line 136
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 148
    .line 149
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;

    .line 150
    .line 151
    const/4 v4, 0x3

    .line 152
    invoke-direct {v3, v4, v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0, v2, p0, v3}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
