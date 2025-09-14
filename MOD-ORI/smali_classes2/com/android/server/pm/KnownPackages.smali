.class public final Lcom/android/server/pm/KnownPackages;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mRecentsPackage:Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mWearableSensingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, [Ljava/lang/String;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array {p0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 25
    .line 26
    filled-new-array {p0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    .line 36
    .line 37
    filled-new-array {p0}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, [Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x1

    .line 62
    new-array p1, p1, [Ljava/lang/String;

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    aput-object p0, p1, p2

    .line 66
    .line 67
    move-object p0, p1

    .line 68
    :goto_0
    return-object p0

    .line 69
    :pswitch_5
    const-string p0, "com.android.companiondevicemanager"

    .line 70
    .line 71
    filled-new-array {p0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 81
    .line 82
    filled-new-array {p0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 92
    .line 93
    filled-new-array {p0}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 103
    .line 104
    filled-new-array {p0}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    .line 114
    .line 115
    filled-new-array {p0}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 125
    .line 126
    filled-new-array {p0}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :pswitch_b
    iget-object p2, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 138
    .line 139
    filled-new-array {p2, p0}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_c
    const-string p1, "android.app.role.BROWSER"

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 151
    .line 152
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(ILjava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    filled-new-array {p0}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 169
    .line 170
    filled-new-array {p0}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    return-object p0

    .line 179
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 180
    .line 181
    filled-new-array {p0}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    .line 191
    .line 192
    filled-new-array {p0}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_11
    const-string p0, "android"

    .line 202
    .line 203
    filled-new-array {p0}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
