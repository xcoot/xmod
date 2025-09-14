.class public final Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConversationInfoFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "conversations"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
