.class public final Lcom/android/server/pm/PackageInstallerHistoricalSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBridges:I

.field public final mChildSessionIds:[I

.field public final mClientProgress:F

.field public final mCommitted:Z

.field public final mCommittedMillis:J

.field public final mCreatedMillis:J

.field public final mDestroyed:Z

.field public final mFds:I

.field public final mFinalMessage:Ljava/lang/String;

.field public final mFinalStatus:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mInstallerUid:I

.field public final mOriginalInstallerPackageName:Ljava/lang/String;

.field public final mOriginalInstallerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public final mParams:Ljava/lang/String;

.field public final mParentSessionId:I

.field public final mPermissionsManuallyAccepted:Z

.field public final mPreVerifiedDomains:Ljava/lang/String;

.field public final mPreapprovalDetails:Ljava/lang/String;

.field public final mPreapprovalRequested:Z

.field public final mProgress:F

.field public final mSealed:Z

.field public final mSessionApplied:Z

.field public final mSessionErrorCode:I

.field public final mSessionErrorMessage:Ljava/lang/String;

.field public final mSessionFailed:Z

.field public final mSessionReady:Z

.field public final mStageCid:Ljava/lang/String;

.field public final mStageDir:Ljava/io/File;

.field public final mStageDirInUse:Z

.field public final mUpdatedMillis:J

.field public final sessionId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Lcom/android/server/pm/InstallSource;IJJJLjava/io/File;Ljava/lang/String;FFZZZZZZIIILjava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;I[IZZZILjava/lang/String;Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/pm/verify/domain/DomainSet;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p27

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 2
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->sessionId:I

    move v2, p2

    .line 3
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    move v2, p3

    .line 4
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerUid:I

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    move-object v2, p5

    .line 6
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    move v2, p6

    .line 7
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallerUid:I

    move-wide v2, p7

    .line 8
    iput-wide v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCreatedMillis:J

    move-wide v2, p9

    .line 9
    iput-wide v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mUpdatedMillis:J

    move-wide/from16 v2, p11

    .line 10
    iput-wide v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommittedMillis:J

    move-object/from16 v2, p13

    .line 11
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDir:Ljava/io/File;

    move-object/from16 v2, p14

    .line 12
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageCid:Ljava/lang/String;

    move/from16 v2, p15

    .line 13
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mClientProgress:F

    move/from16 v2, p16

    .line 14
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mProgress:F

    move/from16 v2, p17

    .line 15
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommitted:Z

    move/from16 v2, p18

    .line 16
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalRequested:Z

    move/from16 v2, p19

    .line 17
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSealed:Z

    move/from16 v2, p20

    .line 18
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPermissionsManuallyAccepted:Z

    move/from16 v2, p21

    .line 19
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDirInUse:Z

    move/from16 v2, p22

    .line 20
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mDestroyed:Z

    move/from16 v2, p23

    .line 21
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFds:I

    move/from16 v2, p24

    .line 22
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mBridges:I

    move/from16 v2, p25

    .line 23
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalStatus:I

    move-object/from16 v2, p26

    .line 24
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalMessage:Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 26
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "    "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParams:Ljava/lang/String;

    move/from16 v2, p28

    .line 29
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParentSessionId:I

    move-object/from16 v2, p29

    .line 30
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mChildSessionIds:[I

    move/from16 v2, p30

    .line 31
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionApplied:Z

    move/from16 v2, p31

    .line 32
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionFailed:Z

    move/from16 v2, p32

    .line 33
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionReady:Z

    move/from16 v2, p33

    .line 34
    iput v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorCode:I

    move-object/from16 v2, p34

    .line 35
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorMessage:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p35, :cond_0

    .line 36
    invoke-virtual/range {p35 .. p35}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalDetails:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_0
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalDetails:Ljava/lang/String;

    :goto_0
    if-eqz p36, :cond_1

    .line 38
    const-string v2, ","

    invoke-virtual/range {p36 .. p36}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreVerifiedDomains:Ljava/lang/String;

    goto :goto_1

    .line 39
    :cond_1
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreVerifiedDomains:Ljava/lang/String;

    :goto_1
    if-eqz p35, :cond_2

    .line 40
    invoke-virtual/range {p35 .. p35}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    if-eqz p37, :cond_3

    move-object/from16 v1, p37

    goto :goto_2

    .line 41
    :cond_3
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Session "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->sessionId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "userId"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerUid:I

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string/jumbo v1, "mOriginalInstallerUid"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "mOriginalInstallerPackageName"

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "installerPackageName"

    .line 65
    .line 66
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 67
    .line 68
    .line 69
    const-string v1, "installInitiatingPackageName"

    .line 70
    .line 71
    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 74
    .line 75
    .line 76
    const-string v1, "installOriginatingPackageName"

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 81
    .line 82
    .line 83
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallerUid:I

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, "mInstallerUid"

    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 92
    .line 93
    .line 94
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCreatedMillis:J

    .line 95
    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "createdMillis"

    .line 101
    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 103
    .line 104
    .line 105
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mUpdatedMillis:J

    .line 106
    .line 107
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string/jumbo v1, "updatedMillis"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 115
    .line 116
    .line 117
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommittedMillis:J

    .line 118
    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "committedMillis"

    .line 124
    .line 125
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 126
    .line 127
    .line 128
    const-string/jumbo v0, "stageDir"

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDir:Ljava/io/File;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 134
    .line 135
    .line 136
    const-string/jumbo v0, "stageCid"

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageCid:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParams:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mClientProgress:F

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "mClientProgress"

    .line 159
    .line 160
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mProgress:F

    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string/jumbo v1, "mProgress"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 173
    .line 174
    .line 175
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommitted:Z

    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "mCommitted"

    .line 182
    .line 183
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 184
    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalRequested:Z

    .line 187
    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string/jumbo v1, "mPreapprovalRequested"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 196
    .line 197
    .line 198
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSealed:Z

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string/jumbo v1, "mSealed"

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 208
    .line 209
    .line 210
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPermissionsManuallyAccepted:Z

    .line 211
    .line 212
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string/jumbo v1, "mPermissionsManuallyAccepted"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 220
    .line 221
    .line 222
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDirInUse:Z

    .line 223
    .line 224
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string/jumbo v1, "mStageDirInUse"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 232
    .line 233
    .line 234
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mDestroyed:Z

    .line 235
    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, "mDestroyed"

    .line 241
    .line 242
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 243
    .line 244
    .line 245
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFds:I

    .line 246
    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v1, "mFds"

    .line 252
    .line 253
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 254
    .line 255
    .line 256
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mBridges:I

    .line 257
    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const-string v1, "mBridges"

    .line 263
    .line 264
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 265
    .line 266
    .line 267
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalStatus:I

    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, "mFinalStatus"

    .line 274
    .line 275
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 276
    .line 277
    .line 278
    const-string v0, "mFinalMessage"

    .line 279
    .line 280
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalMessage:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 283
    .line 284
    .line 285
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParentSessionId:I

    .line 286
    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string/jumbo v1, "mParentSessionId"

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 295
    .line 296
    .line 297
    const-string v0, "mChildSessionIds"

    .line 298
    .line 299
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mChildSessionIds:[I

    .line 300
    .line 301
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 302
    .line 303
    .line 304
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionApplied:Z

    .line 305
    .line 306
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string/jumbo v1, "mSessionApplied"

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 314
    .line 315
    .line 316
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionFailed:Z

    .line 317
    .line 318
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const-string/jumbo v1, "mSessionFailed"

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 326
    .line 327
    .line 328
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionReady:Z

    .line 329
    .line 330
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const-string/jumbo v1, "mSessionReady"

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 338
    .line 339
    .line 340
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorCode:I

    .line 341
    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string/jumbo v1, "mSessionErrorCode"

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 350
    .line 351
    .line 352
    const-string/jumbo v0, "mSessionErrorMessage"

    .line 353
    .line 354
    .line 355
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 358
    .line 359
    .line 360
    const-string/jumbo v0, "mPreapprovalDetails"

    .line 361
    .line 362
    .line 363
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalDetails:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 366
    .line 367
    .line 368
    const-string/jumbo v0, "mPreVerifiedDomains"

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreVerifiedDomains:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 374
    .line 375
    .line 376
    const-string v0, "mAppPackageName"

    .line 377
    .line 378
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPackageName:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 387
    .line 388
    .line 389
    return-void
.end method

.method public final generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->sessionId:I

    .line 7
    .line 8
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    .line 11
    .line 12
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mProgress:F

    .line 25
    .line 26
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSealed:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommitted:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalRequested:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParentSessionId:I

    .line 41
    .line 42
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mChildSessionIds:[I

    .line 45
    .line 46
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionApplied:Z

    .line 49
    .line 50
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionReady:Z

    .line 53
    .line 54
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionFailed:Z

    .line 57
    .line 58
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 59
    .line 60
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorCode:I

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->setSessionErrorCode(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCreatedMillis:J

    .line 68
    .line 69
    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 70
    .line 71
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mUpdatedMillis:J

    .line 72
    .line 73
    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 74
    .line 75
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallerUid:I

    .line 76
    .line 77
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPackageName:Ljava/lang/String;

    .line 80
    .line 81
    iput-object p0, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 82
    .line 83
    return-object v0
.end method
