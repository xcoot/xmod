.class public final Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ERROR_ALREADY_DONE:I = -0x4

.field public static final ERROR_BY_SYSTEM:I = -0x5

.field public static final ERROR_INVALID_ARGUMENT:I = -0x2

.field public static final ERROR_LIMIT_EXCEEDED:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OPERATION_NOT_PERMITTED:I = -0x1

.field public static final ERROR_SERVICE_NOT_FOUND:I = -0x6

.field public static final EXTRAS_PACKAGE_NAME:I = 0x2

.field public static final EXTRAS_PROCESS_NAME:I = 0x1

.field public static final EXTRAS_SECURITY_CONTEXT:I = 0x4

.field public static final FLAG_TRACING_FS:I = 0x1

.field public static final FLAG_TRACING_FW:I = 0x80

.field public static final FLAG_TRACING_NETWORK_EVENT_ABNORMAL_PKT:I = 0x10000

.field public static final FLAG_TRACING_NETWORK_EVENT_INSECURE_PORT:I = 0x8000

.field public static final FLAG_TRACING_NETWORK_EVENT_LOCAL_PKT:I = 0x20000

.field public static final FLAG_TRACING_PKT:I = 0x40

.field public static final FLAG_TRACING_PROC:I = 0x800

.field public static final FLAG_TRACING_PROCESS_CREATION:I = 0x1000

.field public static final FLAG_TRACING_PROCESS_PERMISSIONS_MODIFICATION:I = 0x4000

.field public static final FLAG_TRACING_PROCESS_TERMINATION:I = 0x2000

.field public static final FLAG_TRACING_SC_CHMOD:I = 0x100

.field public static final FLAG_TRACING_SC_CHOWN:I = 0x200

.field public static final FLAG_TRACING_SC_CLOSE:I = 0x4

.field public static final FLAG_TRACING_SC_EXECVE:I = 0x10

.field public static final FLAG_TRACING_SC_MEMFD_CREATE:I = 0x400

.field public static final FLAG_TRACING_SC_MOUNT:I = 0x8

.field public static final FLAG_TRACING_SC_OPEN:I = 0x2

.field public static final FLAG_TRACING_SK:I = 0x20

.field public static final GENERIC_SYSCALL_NR_CLOSE:I = 0x39

.field public static final GENERIC_SYSCALL_NR_EXECVE:I = 0xdd

.field public static final GENERIC_SYSCALL_NR_FCHMOD:I = 0x34

.field public static final GENERIC_SYSCALL_NR_FCHMODAT:I = 0x35

.field public static final GENERIC_SYSCALL_NR_FCHOWN:I = 0x37

.field public static final GENERIC_SYSCALL_NR_FCHOWNAT:I = 0x36

.field public static final GENERIC_SYSCALL_NR_MEMFD_CREATE:I = 0x117

.field public static final GENERIC_SYSCALL_NR_MOUNT:I = 0x28

.field public static final GENERIC_SYSCALL_NR_OPEN:I = 0x38

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_GENERALIZED:I = 0x2

.field public static final MODE_RAW:I = 0x3

.field public static final MODE_SIMPLIFIED:I = 0x1

.field public static final MON_TYPE_APP_PROCESS:I = 0x7

.field public static final MON_TYPE_DOMAIN_ACCESS:I = 0x6

.field public static final MON_TYPE_FILE_ACCESS:I = 0x2

.field public static final MON_TYPE_NETWORK_EVENTS:I = 0xd

.field public static final MON_TYPE_NETWORK_EVENT_ABNORMAL_PKT:I = 0xf

.field public static final MON_TYPE_NETWORK_EVENT_INSECURE_PORT:I = 0xe

.field public static final MON_TYPE_NETWORK_EVENT_LOCAL_NW_PKT:I = 0x10

.field public static final MON_TYPE_PROCESS:I = 0x4

.field public static final MON_TYPE_PROCESS_CREATION:I = 0xa

.field public static final MON_TYPE_PROCESS_PERMISSIONS_MODIFICATION:I = 0xc

.field public static final MON_TYPE_PROCESS_TERMINATION:I = 0xb

.field public static final MON_TYPE_SOCK_STATE_CHANGE:I = 0x3

.field public static final MON_TYPE_SYSTEM_CALL:I = 0x1

.field public static final MON_TYPE_TLS_PACKET:I = 0x5

.field public static final OPT_TRACE_APPLICATION_ONLY:Ljava/lang/String; = "app_only"

.field public static final TRACE_CLASS_DOMAIN_ACCESS:I = 0x2

.field public static final TRACE_CLASS_FILE_ACCESS:I = 0x1

.field public static final TRACE_EVENT_APP_BINDING:I = 0x259

.field public static final TRACE_EVENT_APP_DYING:I = 0x25a

.field public static final TRACE_EVENT_F2FS_DATAREAD_END:I = 0xd3

.field public static final TRACE_EVENT_F2FS_DATAREAD_START:I = 0xd2

.field public static final TRACE_EVENT_F2FS_DATAWRITE_END:I = 0xd5

.field public static final TRACE_EVENT_F2FS_DATAWRITE_START:I = 0xd4

.field public static final TRACE_EVENT_F2FS_IGET:I = 0xc9

.field public static final TRACE_EVENT_F2FS_IGET_EXIT:I = 0xca

.field public static final TRACE_EVENT_F2FS_READDIR:I = 0xcb

.field public static final TRACE_EVENT_F2FS_READPAGE:I = 0xcc

.field public static final TRACE_EVENT_F2FS_READPAGES:I = 0xcd

.field public static final TRACE_EVENT_F2FS_UNLINK_ENTER:I = 0xce

.field public static final TRACE_EVENT_F2FS_UNLINK_EXIT:I = 0xcf

.field public static final TRACE_EVENT_F2FS_WRITEPAGE:I = 0xd0

.field public static final TRACE_EVENT_F2FS_WRITEPAGES:I = 0xd1

.field public static final TRACE_EVENT_INET_SOCK_SET_STATE:I = 0x12d

.field public static final TRACE_EVENT_SCHED_CLS_EGRESS:I = 0x1f6

.field public static final TRACE_EVENT_SCHED_CLS_INGRESS:I = 0x1f5

.field public static final TRACE_EVENT_SCHED_PROCESS_EXEC:I = 0x2bd

.field public static final TRACE_EVENT_SCHED_PROCESS_EXIT:I = 0x2be

.field public static final TRACE_EVENT_SCHED_PROCESS_FORK:I = 0x2bf

.field public static final TRACE_EVENT_SYS_CLOSE:I = 0x68

.field public static final TRACE_EVENT_SYS_ENTER:I = 0x65

.field public static final TRACE_EVENT_SYS_ENTER_EXECVE:I = 0x4c5

.field public static final TRACE_EVENT_SYS_ENTER_SETFSGID:I = 0x480

.field public static final TRACE_EVENT_SYS_ENTER_SETFSUID:I = 0x47f

.field public static final TRACE_EVENT_SYS_ENTER_SETGID:I = 0x478

.field public static final TRACE_EVENT_SYS_ENTER_SETREGID:I = 0x477

.field public static final TRACE_EVENT_SYS_ENTER_SETRESGID:I = 0x47d

.field public static final TRACE_EVENT_SYS_ENTER_SETRESUID:I = 0x47b

.field public static final TRACE_EVENT_SYS_ENTER_SETREUID:I = 0x479

.field public static final TRACE_EVENT_SYS_ENTER_SETUID:I = 0x47a

.field public static final TRACE_EVENT_SYS_EXECVE:I = 0x6a

.field public static final TRACE_EVENT_SYS_EXIT:I = 0x66

.field public static final TRACE_EVENT_SYS_EXIT_EXECVE:I = 0x8ad

.field public static final TRACE_EVENT_SYS_EXIT_SETFSGID:I = 0x868

.field public static final TRACE_EVENT_SYS_EXIT_SETFSUID:I = 0x867

.field public static final TRACE_EVENT_SYS_EXIT_SETGID:I = 0x860

.field public static final TRACE_EVENT_SYS_EXIT_SETREGID:I = 0x85f

.field public static final TRACE_EVENT_SYS_EXIT_SETRESGID:I = 0x865

.field public static final TRACE_EVENT_SYS_EXIT_SETRESUID:I = 0x863

.field public static final TRACE_EVENT_SYS_EXIT_SETREUID:I = 0x861

.field public static final TRACE_EVENT_SYS_EXIT_SETUID:I = 0x862

.field public static final TRACE_EVENT_SYS_FCHMOD:I = 0x6b

.field public static final TRACE_EVENT_SYS_FCHMODAT:I = 0x6c

.field public static final TRACE_EVENT_SYS_FCHOWN:I = 0x6e

.field public static final TRACE_EVENT_SYS_FCHOWNAT:I = 0x6d

.field public static final TRACE_EVENT_SYS_MEMFD_CREATE:I = 0x6f

.field public static final TRACE_EVENT_SYS_MOUNT:I = 0x69

.field public static final TRACE_EVENT_SYS_OPEN:I = 0x67

.field public static final TRACE_EVENT_TASK_RENAME:I = 0x321

.field public static final TRACE_FIRST_TYPE:I = 0x1

.field public static final TRACE_LAST_TYPE:I = 0x10

.field public static final TRACE_SYSTEM_ETC:I = 0x5

.field public static final TRACE_SYSTEM_F2FS:I = 0x2

.field public static final TRACE_SYSTEM_RAW_SYSCALL:I = 0x1

.field public static final TRACE_SYSTEM_SCHED:I = 0x4

.field public static final TRACE_SYSTEM_SOCK:I = 0x3

.field public static final TRACE_TYPE_APP_PROC:I = 0x7

.field public static final TRACE_TYPE_DOMAIN:I = 0x6

.field public static final TRACE_TYPE_FS:I = 0x2

.field public static final TRACE_TYPE_NETWORK_EVENTS:I = 0xd

.field public static final TRACE_TYPE_NETWORK_EVENT_ABNORMAL_PKT:I = 0xf

.field public static final TRACE_TYPE_NETWORK_EVENT_INSECURE_PORT:I = 0xe

.field public static final TRACE_TYPE_NETWORK_EVENT_LOCAL_NW_PKT:I = 0x10

.field public static final TRACE_TYPE_PHISHING:I = 0x8

.field public static final TRACE_TYPE_PKT:I = 0x5

.field public static final TRACE_TYPE_PROC:I = 0x4

.field public static final TRACE_TYPE_PROCESS_CREATION:I = 0xa

.field public static final TRACE_TYPE_PROCESS_PERMISSIONS_MODIFICATION:I = 0xc

.field public static final TRACE_TYPE_PROCESS_TERMINATION:I = 0xb

.field public static final TRACE_TYPE_SIGNALS:I = 0x9

.field public static final TRACE_TYPE_SOCK:I = 0x3

.field public static final TRACE_TYPE_SYSCALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static convScEventToScFlag(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_0
    const/16 p0, 0x400

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_1
    const/16 p0, 0x200

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_2
    const/16 p0, 0x100

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_3
    const/16 p0, 0x10

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_4
    const/16 p0, 0x8

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_5
    const/4 p0, 0x4

    .line 22
    return p0

    .line 23
    :pswitch_6
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static matchScEventToScFlags(II)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->convScEventToScFlag(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/2addr p0, p1

    .line 6
    if-lez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static translateClass(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Unknown("

    .line 8
    .line 9
    const-string v1, ")"

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "Domain Access"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p0, "File Access"

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public static translateEvent(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x12d

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x1f5

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x1f6

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    packed-switch p0, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    const-string v0, "Unknown("

    .line 20
    .line 21
    const-string v1, ")"

    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    const-string p0, "f2fs_datawrite_end"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    const-string p0, "f2fs_datawrite_start"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    const-string p0, "f2fs_dataread_end"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    const-string p0, "f2fs_dataread_start"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    const-string p0, "f2fs_writepages"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    const-string p0, "f2fs_writepage"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_6
    const-string p0, "f2fs_unlink_exit"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_7
    const-string p0, "f2fs_unlink_enter"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_8
    const-string p0, "f2fs_readpages"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_9
    const-string p0, "f2fs_readpage"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_a
    const-string p0, "f2fs_readdir"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_b
    const-string p0, "f2fs_iget_exit"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_c
    const-string p0, "f2fs_iget"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_d
    const-string/jumbo p0, "raw_syscalls___memfd_create"

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_e
    const-string/jumbo p0, "raw_syscalls___fchown"

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_f
    const-string/jumbo p0, "raw_syscalls___fchownat"

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_10
    const-string/jumbo p0, "raw_syscalls___fchmodat"

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_11
    const-string/jumbo p0, "raw_syscalls___fchmod"

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_12
    const-string/jumbo p0, "raw_syscalls___execve"

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_13
    const-string/jumbo p0, "raw_syscalls___mount"

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_14
    const-string/jumbo p0, "raw_syscalls___close"

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_15
    const-string/jumbo p0, "raw_syscalls___open"

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const-string/jumbo p0, "schedcls_egress"

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo p0, "schedcls_ingress"

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const-string p0, "inet_sock_set_state"

    .line 112
    .line 113
    :goto_0
    return-object p0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateSystem(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Unknown("

    .line 14
    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo p0, "sched"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string/jumbo p0, "sock"

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string p0, "f2fs"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string/jumbo p0, "raw_syscalls"

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p0
.end method

.method public static validateMode(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    if-gt p0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public static validateTraceType(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    if-gt p0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
