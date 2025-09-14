.class public final Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/FileIntegrityService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, "append-cert"

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_4

    .line 26
    .line 27
    const-string/jumbo v3, "remove-last-cert"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, "Unknown action"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->onHelp()V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/ArrayList;

    .line 53
    .line 54
    monitor-enter p1

    .line 55
    :try_start_0
    iget-object v3, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    const-string p0, "Certificate list is already empty"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit p1

    .line 71
    return v1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/lit8 v1, v1, -0x1

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const-string p0, "Certificate is removed successfully"

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    const-string p1, "Invalid argument"

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p1, ""

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->onHelp()V

    .line 113
    .line 114
    .line 115
    return v1

    .line 116
    :cond_5
    const-string/jumbo v3, "r"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    const-string p0, "Cannot open the file"

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :cond_6
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 132
    .line 133
    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 134
    .line 135
    .line 136
    :try_start_2
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/io/InputStream;->readAllBytes()[B

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/security/FileIntegrityService;->collectCertificate([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    .line 145
    const-string p0, "Certificate is added successfully"

    .line 146
    .line 147
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return v2

    .line 151
    :catch_0
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v2, "Failed to add certificate: "

    .line 155
    .line 156
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return v1
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "File integrity service commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  append-cert path/to/cert.der"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Add the DER-encoded certificate (only in debug builds)"

    .line 26
    .line 27
    const-string v1, "  remove-last-cert"

    .line 28
    .line 29
    const-string v2, "    Remove the last certificate in the key list (only in debug builds)"

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
