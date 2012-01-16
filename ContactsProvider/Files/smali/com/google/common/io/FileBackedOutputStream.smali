.class public final Lcom/google/common/io/FileBackedOutputStream;
.super Ljava/io/OutputStream;
.source "FileBackedOutputStream.java"


# instance fields
.field private final dn:I

.field private final do:Z

.field private dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

.field private file:Ljava/io/File;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static synthetic a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/io/FileBackedOutputStream;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized openStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v1}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v3}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getCount()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getCount()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/common/io/FileBackedOutputStream;->dn:I

    if-le v0, v1, :cond_1

    .line 188
    const-string v0, "FileBackedOutputStream"

    invoke-static {v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 189
    iget-boolean v1, p0, Lcom/google/common/io/FileBackedOutputStream;->do:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 194
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v2}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getBuffer()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v4}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 196
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 199
    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    .line 200
    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 201
    iput-object v5, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    .line 203
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    .line 150
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->reset()V

    goto :goto_0

    .line 144
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    .line 150
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 152
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->dp:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v1}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->reset()V

    goto :goto_1

    .line 156
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/common/io/FileBackedOutputStream;->update(I)V

    .line 162
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .parameter

    .prologue
    .line 166
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/FileBackedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/common/io/FileBackedOutputStream;->update(I)V

    .line 171
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
